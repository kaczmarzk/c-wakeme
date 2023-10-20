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
import 'package:wakeme/src/core/injection/modules/debounce_module.dart' as _i12;
import 'package:wakeme/src/core/injection/modules/router_module.dart' as _i14;
import 'package:wakeme/src/core/injection/modules/time_listener_module.dart'
    as _i13;
import 'package:wakeme/src/core/routing/app_router.dart' as _i3;
import 'package:wakeme/src/core/service/db/hive/hive_client.dart' as _i5;
import 'package:wakeme/src/core/service/debounce/easy_debouncer.dart' as _i4;
import 'package:wakeme/src/features/alarms/data/source/local/buzzers_local_source.dart'
    as _i9;
import 'package:wakeme/src/features/alarms/domain/repository/buzzers_repository.dart'
    as _i10;
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart'
    as _i8;
import 'package:wakeme/src/features/alarms/presentation/quick_alarm/cubit/quick_alarm_screen_cubit.dart'
    as _i6;
import 'package:wakeme/src/features/dashboard/cubit/dashboard_screen_cubit.dart'
    as _i11;

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
    final debounceModule = _$DebounceModule();
    final timeListenerModule = _$TimeListenerModule();
    gh.singleton<_i3.AppRouter>(routerModule.instance);
    gh.factory<_i4.EasyDebouncer>(() => debounceModule.instance);
    gh.lazySingleton<_i5.HiveClient>(() => _i5.HiveClient());
    gh.factory<_i6.QuickAlarmScreenCubit>(() => _i6.QuickAlarmScreenCubit());
    gh.factory<_i7.TimeListener>(() => timeListenerModule.instance);
    gh.factory<_i8.AlarmDetailsScreenCubit>(() => _i8.AlarmDetailsScreenCubit(
          gh<_i4.EasyDebouncer>(),
          gh<_i7.TimeListener>(),
        ));
    gh.factory<_i9.BuzzersLocalSource>(
        () => _i9.BuzzersLocalSource(gh<_i5.HiveClient>()));
    gh.factory<_i10.BuzzersRepository>(
        () => _i10.BuzzersRepository(gh<_i9.BuzzersLocalSource>()));
    gh.factory<_i11.DashboardScreenCubit>(
        () => _i11.DashboardScreenCubit(gh<_i10.BuzzersRepository>()));
    return this;
  }
}

class _$DebounceModule extends _i12.DebounceModule {}

class _$TimeListenerModule extends _i13.TimeListenerModule {}

class _$RouterModule extends _i14.RouterModule {}
