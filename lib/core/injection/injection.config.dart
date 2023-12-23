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
import 'package:wakeme/core/injection/modules/clock_module.dart' as _i12;
import 'package:wakeme/core/injection/modules/debounce_module.dart' as _i11;
import 'package:wakeme/core/root/cubit/root_cubit.dart' as _i6;
import 'package:wakeme/core/service/db/hive/hive_client.dart' as _i5;
import 'package:wakeme/core/utils/c_clock.dart' as _i3;
import 'package:wakeme/core/utils/c_debounce.dart' as _i4;
import 'package:wakeme/src/features/alarms/data/sources/alarms_local_source.dart'
    as _i7;
import 'package:wakeme/src/features/alarms/domain/repositories/alarms_repository.dart'
    as _i8;
import 'package:wakeme/src/presentation/alarm_details/cubit/alarm_details_screen_cubit.dart'
    as _i10;
import 'package:wakeme/src/presentation/dashboard/cubit/dashboard_screen_cubit.dart'
    as _i9;

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
    final clockModule = _$ClockModule();
    final debounceModule = _$DebounceModule();
    gh.factory<_i3.CClock>(() => clockModule.instance);
    gh.factory<_i4.CDebounce>(() => debounceModule.instance);
    gh.lazySingleton<_i5.HiveClient>(() => _i5.HiveClient());
    gh.factory<_i6.RootCubit>(() => _i6.RootCubit());
    gh.factory<_i7.AlarmsLocalSource>(
        () => _i7.AlarmsLocalSource(gh<_i5.HiveClient>()));
    gh.factory<_i8.AlarmsRepository>(
        () => _i8.AlarmsRepository(gh<_i7.AlarmsLocalSource>()));
    gh.factory<_i9.DashboardScreenCubit>(
        () => _i9.DashboardScreenCubit(gh<_i8.AlarmsRepository>()));
    gh.factory<_i10.AlarmDetailsScreenCubit>(() => _i10.AlarmDetailsScreenCubit(
          gh<_i3.CClock>(),
          gh<_i4.CDebounce>(),
          gh<_i8.AlarmsRepository>(),
        ));
    return this;
  }
}

class _$DebounceModule extends _i11.DebounceModule {}

class _$ClockModule extends _i12.ClockModule {}
