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
import 'package:wakeme/src/core/injection/modules/router_module.dart' as _i9;
import 'package:wakeme/src/core/routing/app_router.dart' as _i3;
import 'package:wakeme/src/core/service/db/hive/hive_client.dart' as _i5;
import 'package:wakeme/src/features/buzzers/data/source/local/buzzers_local_source.dart'
    as _i6;
import 'package:wakeme/src/features/buzzers/domain/repository/buzzers_repository.dart'
    as _i7;
import 'package:wakeme/src/features/buzzers/presentation/buzzer_details_page/cubit/buzzer_details_screen_cubit.dart'
    as _i4;
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/cubit/buzzers_screen_cubit.dart'
    as _i8;

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
    gh.singleton<_i3.AppRouter>(routerModule.router);
    gh.factory<_i4.BuzzerDetailsScreenCubit>(
        () => _i4.BuzzerDetailsScreenCubit());
    gh.lazySingleton<_i5.HiveClient>(() => _i5.HiveClient());
    gh.factory<_i6.BuzzersLocalSource>(
        () => _i6.BuzzersLocalSource(gh<_i5.HiveClient>()));
    gh.factory<_i7.BuzzersRepository>(
        () => _i7.BuzzersRepository(gh<_i6.BuzzersLocalSource>()));
    gh.factory<_i8.BuzzersScreenCubit>(
        () => _i8.BuzzersScreenCubit(gh<_i7.BuzzersRepository>()));
    return this;
  }
}

class _$RouterModule extends _i9.RouterModule {}
