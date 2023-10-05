import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/presentation/common/widgets/common_screen.dart';
import 'package:wakeme/src/presentation/landing_page/cubit/landing_cubit.dart';
import 'package:wakeme/src/presentation/landing_page/widgets/add_buzzer_button.dart';
import 'package:wakeme/src/presentation/landing_page/widgets/buzzer_widget.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<LandingCubit>()..fetchBuzzers(),
      child: const CommonScreen(
        floating: AddBuzzerButton(),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<LandingCubit, LandingState>(
        builder: (_, state) => ListView.builder(
          itemCount: state.buzzers.length,
          itemBuilder: (_, index) => BuzzerWidget(
            state.buzzers[index],
          ),
        ),
      );
}
