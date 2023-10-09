import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/cubit/buzzers_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/theme/theme_colors.dart';

class BuzzersListWidget extends StatelessWidget {
  const BuzzersListWidget(this.buzzer, {super.key});

  final Buzzer buzzer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<BuzzersScreenCubit>().onRemoveBuzzer(buzzer),
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 125.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ThemeColors.componentSecondary,
              width: 3.0,
            ),
          ),
        ),
        child: Text(
          buzzer.label,
          style: const TextStyle(color: ThemeColors.textPrimary),
        ),
      ),
    );
  }
}
