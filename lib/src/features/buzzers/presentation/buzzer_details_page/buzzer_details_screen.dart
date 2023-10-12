import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/i18n/translations.g.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_icon_button.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/presentation/widgets/c_timer_picker.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_option_box.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzer_details_page/cubit/buzzer_details_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';

@RoutePage()
class BuzzerDetailsScreen extends StatelessWidget {
  const BuzzerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<BuzzerDetailsScreenCubit>(),
      child: const CScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<BuzzerDetailsScreenCubit, BuzzerDetailsScreenState>(
        builder: (_, state) => Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    alignment: Alignment.centerLeft,
                    child: CIconButton(
                      icon: CupertinoIcons.back,
                      onPressed: context.router.pop,
                    ),
                  ),
                  Text(
                    'Buzzer',
                    style: CThemeStyles.gilroyMedium_20.copyWith(
                      color: CThemeColors.grayCloud,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(width: 100),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            CContentBox(
              height: 160.0,
              child: CTimePicker(
                initial: state.date,
                onDateChanged: context.read<BuzzerDetailsScreenCubit>().handleDateChanged,
              ),
            ),
            const SizedBox(height: 20.0),
            CContentBox(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 60.0,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Setup your buzzer',
                      style: CThemeStyles.gilroyMedium_20.copyWith(
                        color: CThemeColors.grayCloud,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  CContentOptionBox(
                    title: 'Label',
                    subtitle: 'Śliczna nazwa budzika',
                    onPressed: () => print('pressed'),
                  ),
                  const CContentOptionBox(
                    title: 'Repeat',
                    subtitle: 'Never',
                  ),
                  const CContentOptionBox(
                    title: 'Sound',
                    subtitle: 'Orkney',
                  ),
                ],
              ),
            ),
            const Spacer(),
            CBottomFloatingButton(
              label: l18n.save,
              onPressed: context.read<BuzzerDetailsScreenCubit>().handleSave,
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      );
}
