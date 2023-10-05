import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/presentation/common/theme/theme_colors.dart';
import 'package:wakeme/src/presentation/landing_page/cubit/landing_cubit.dart';

class AddBuzzerButton extends StatelessWidget {
  const AddBuzzerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: context.read<LandingCubit>().onAddBuzzer,
      backgroundColor: ThemeColors.componentPrimary,
      child: const Icon(
        CupertinoIcons.add,
        color: ThemeColors.textPrimary,
      ),
    );
  }
}
