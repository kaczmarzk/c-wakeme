import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_icon_button.dart';

class CAppBar extends StatelessWidget {
  const CAppBar({required this.label, this.leading, super.key});

  final String label;
  final CIconButton? leading;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: CThemeDimens.sizeCAppBar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              alignment: Alignment.centerLeft,
              child: leading ??
                  CIconButton(
                    icon: CupertinoIcons.arrow_left,
                    onPressed: context.router.pop,
                    size: CThemeSize.large,
                  ),
            ),
            Text(
              label,
              style: CThemeStyles.gilroyMedium_20.copyWith(
                color: CThemeColors.grayCloud,
              ),
            ),
            const SizedBox(width: 100),
          ],
        ),
      );
}
