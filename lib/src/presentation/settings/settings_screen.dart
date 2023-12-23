import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/src/common/presentation/widgets/c_app_bar.dart';
import 'package:wakeme/src/common/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/presentation/settings/cubit/settings_cubit.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<SettingsCubit>(),
      child: const CScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          CAppBar(label: 'Settings'),
        ],
      );
}
