import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class CTime extends Equatable {
  const CTime({
    required this.hour,
    required this.minute,
  });

  factory CTime.fromDt(DateTime dt) => CTime(
        hour: dt.hour,
        minute: dt.minute,
      );

  final int hour;
  final int minute;

  DateTime get dt => DateTime.now().copyWith(hour: hour, minute: minute);

  @override
  List<Object> get props => [hour, minute];
}
