import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/injection/injection.config.dart';

/// Configures dependency injection generator
/// Run build runner every time when adding new dependencies
///
/// Command:
/// dart run build_runner build
/// dart run build_runner build --delete-conflicting-outputs

final _getIt = GetIt.instance;

@InjectableInit()
GetIt configureDependencies() => _getIt.init();

/// Inject the depedency from get_it.
T inject<T extends Object>({
  String? instanceName,
  dynamic firstParam,
  dynamic secondParam,
}) {
  return _getIt.get<T>(
    instanceName: instanceName,
    param1: firstParam,
    param2: secondParam,
  );
}
