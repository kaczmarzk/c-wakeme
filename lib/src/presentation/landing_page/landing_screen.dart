import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/presentation/common/widgets/common_screen.dart';
import 'package:wakeme/src/presentation/landing_page/cubit/landing_cubit.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      cubit: inject<LandingCubit>()..fetchBuzzers(),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingCubit, LandingState>(
      builder: (_, state) => ListView.builder(
        itemCount: state.buzzers.length,
        itemBuilder: (_, index) => const Placeholder(),
      ),
    );
  }
}
