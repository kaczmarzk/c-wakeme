import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/cubit/buzzers_screen_cubit.dart';
import 'package:wakeme/src/presentation/common/theme/theme_colors.dart';

class BuzzersAddBuzzerButton extends StatelessWidget {
  const BuzzersAddBuzzerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: context.read<BuzzersScreenCubit>().onAddBuzzer,
      backgroundColor: ThemeColors.componentPrimary,
      child: const Icon(
        CupertinoIcons.add,
        color: ThemeColors.textPrimary,
      ),
    );
  }
}
