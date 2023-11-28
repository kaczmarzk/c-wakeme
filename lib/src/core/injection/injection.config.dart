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
import 'package:time_listener/time_listener.dart' as _i7;
import 'package:wakeme/src/core/injection/modules/c_time_module.dart' as _i14;
import 'package:wakeme/src/core/injection/modules/debounce_module.dart' as _i12;
import 'package:wakeme/src/core/injection/modules/router_module.dart' as _i15;
import 'package:wakeme/src/core/injection/modules/time_listener_module.dart'
    as _i13;
import 'package:wakeme/src/core/routing/app_router.dart' as _i3;
import 'package:wakeme/src/core/service/db/hive/hive_client.dart' as _i6;
import 'package:wakeme/src/core/service/debounce/easy_debouncer.dart' as _i5;
import 'package:wakeme/src/core/utils/c_time.dart' as _i4;
import 'package:wakeme/src/features/alarms/data/source/local/alarms_local_source.dart'
    as _i8;
import 'package:wakeme/src/features/alarms/domain/repository/alarms_repository.dart'
    as _i9;
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart'
    as _i11;
import 'package:wakeme/src/features/dashboard/cubit/dashboard_screen_cubit.dart'
    as _i10;

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
    final routerModule = _$RouterModule();
    final cTimeModule = _$CTimeModule();
    final debounceModule = _$DebounceModule();
    final timeListenerModule = _$TimeListenerModule();
    gh.singleton<_i3.AppRouter>(routerModule.instance);
    gh.singleton<_i4.CTime>(cTimeModule.instance);
    gh.factory<_i5.EasyDebouncer>(() => debounceModule.instance);
    gh.lazySingleton<_i6.HiveClient>(() => _i6.HiveClient());
    gh.factory<_i7.TimeListener>(() => timeListenerModule.instance);
    gh.factory<_i8.AlarmsLocalSource>(
        () => _i8.AlarmsLocalSource(gh<_i6.HiveClient>()));
    gh.factory<_i9.AlarmsRepository>(
        () => _i9.AlarmsRepository(gh<_i8.AlarmsLocalSource>()));
    gh.factory<_i10.DashboardScreenCubit>(
        () => _i10.DashboardScreenCubit(gh<_i9.AlarmsRepository>()));
    gh.factory<_i11.AlarmDetailsScreenCubit>(() => _i11.AlarmDetailsScreenCubit(
          gh<_i5.EasyDebouncer>(),
          gh<_i7.TimeListener>(),
          gh<_i4.CTime>(),
          gh<_i9.AlarmsRepository>(),
        ));
    return this;
  }
}

class _$DebounceModule extends _i12.DebounceModule {}

class _$TimeListenerModule extends _i13.TimeListenerModule {}

class _$CTimeModule extends _i14.CTimeModule {}

class _$RouterModule extends _i15.RouterModule {}
