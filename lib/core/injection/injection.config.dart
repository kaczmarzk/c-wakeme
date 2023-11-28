// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wakeme/core/injection/modules/debounce_module.dart' as _i7;
import 'package:wakeme/core/service/db/hive/hive_client.dart' as _i5;
import 'package:wakeme/core/service/debounce/easy_debouncer.dart' as _i4;
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart'
    as _i6;
import 'package:wakeme/src/features/dashboard/cubit/dashboard_screen_cubit.dart'
    as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final debounceModule = _$DebounceModule();
    gh.factory<_i3.DashboardScreenCubit>(() => _i3.DashboardScreenCubit());
    gh.factory<_i4.EasyDebouncer>(() => debounceModule.instance);
    gh.lazySingleton<_i5.HiveClient>(() => _i5.HiveClient());
    gh.factory<_i6.AlarmDetailsScreenCubit>(
        () => _i6.AlarmDetailsScreenCubit(gh<_i4.EasyDebouncer>()));
    return this;
  }
}

class _$DebounceModule extends _i7.DebounceModule {}
