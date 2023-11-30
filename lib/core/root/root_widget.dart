import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/core/root/cubit/root_cubit.dart';
import 'package:wakeme/core/routing/app_router.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => inject<RootCubit>(),
        child: const _Application(),
      );
}

class _Application extends StatelessWidget {
  const _Application();

  static final _router = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        routerConfig: _router.config(),
      );
}
