import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzer_details_page/cubit/buzzer_details_screen_cubit.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzer_details_page/widgets/buzzer_details_time_picker.dart';
import 'package:wakeme/src/presentation/common/theme/theme_colors.dart';
import 'package:wakeme/src/presentation/common/widgets/common_screen.dart';

@RoutePage()
class BuzzerDetailsScreen extends StatelessWidget {
  const BuzzerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<BuzzerDetailsScreenCubit>(),
      child: const CommonScreen(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<BuzzerDetailsScreenCubit, BuzzerDetailsScreenState>(
        builder: (_, state) => ListView(
          padding: EdgeInsets.zero,
          children: [
            BuzzerDetailsTimePicker(
              initial: state.date,
              onDateChanged: context.read<BuzzerDetailsScreenCubit>().handleDateChanged,
            ),
          ],
        ),
      );
}
