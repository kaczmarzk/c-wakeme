import 'dart:isolate';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/service/debounce/easy_debouncer.dart';
import 'package:wakeme/src/core/utils/async/isolate_controller.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/core/presentation/c_core/c_cubit.dart';

part 'buzzer_details_screen_state.dart';

part 'buzzer_details_screen_cubit.freezed.dart';

@injectable
class AlarmDetailsScreenCubit extends CCubit<AlarmDetailsScreenState> with UiLoggy {
  AlarmDetailsScreenCubit(this.debouncer) : super(AlarmDetailsScreenState.initial());
  final EasyDebouncer debouncer;

  IsolateController? isolate;

  void handleDateChanged(BuzzerDate date) {
    debouncer.debounce(
      execute: () {
        final weekdays = _handleWeekdayChanged(date);
        emit(state.copyWith(date: date, weekdays: weekdays));
        loggy.debug('onDateChanged: $weekdays - ${date.hour}:${date.minute}');
      },
    );
  }

  void handleSave() {
    loggy.debug('handle save');
  }

  @override
  Future<void> close() {
    debouncer.cancel();
    return super.close();
  }

  Future<void> _listenDeviceDateChanges() async {
    isolate = await IsolateController.spawn<DateTime, DateTime>(
          (payload, send) async {
        DateTime current = payload.copyWith(microsecond: 0, millisecond: 0, second: 0);

        while (true) {
          await Future.delayed(const Duration(seconds: 1), () {
            final now = DateTime.now().copyWith(microsecond: 0, millisecond: 0, second: 0);
            if (now.isAfter(current)) {
              send(now);
              current = now;
            }
          });
        }
      },
      DateTime.now(),
    )
      ..stream.listen((event) {
        print('date changed: ${event.hour}:${event.minute}');
      });
  }

}

extension AlarmDetailsScreenCubitExt on AlarmDetailsScreenCubit {
  /// change alarm weekday on date change when if not repeated
  Set<Weekday> _handleWeekdayChanged([BuzzerDate? entity]) {
    if (entity == null || state.date.repeat.isNotEmpty) return state.date.repeat;

    final now = DateTime.now();
    final date = now.copyWith(hour: entity.hour, minute: entity.minute);

    /// if user set current hour and minute, set alarm to next day
    final isNow = date.hour == now.hour && date.minute == now.minute;
    final isBefore = date.isBefore(now);
    if (isBefore || isNow) return {Weekday.next};
    return {Weekday.now};
  }
}
