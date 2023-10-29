import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';

class CContentOptionBox extends StatelessWidget {
  const CContentOptionBox({
    required this.title,
    this.subtitle,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0),
    super.key,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return CupertinoInkWell(
      onTap: onPressed,
      pressColor: CThemeColors.cinder,
      child: Container(
        height: 70.0,
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: CThemeStyles.gilroyMedium_20.copyWith(
                    color: CThemeColors.platinum,
                    fontSize: 18,
                  ),
                ),
                if ((subtitle ?? '').isNotEmpty)
                  Text(
                    subtitle!,
                    style: CThemeStyles.gilroyMedium_16.copyWith(
                      color: CThemeColors.softPeach,
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
            const Icon(
              CupertinoIcons.chevron_right,
              size: CThemeDimens.sizeSIcon,
              color: CThemeColors.platinum,
            ),
          ],
        ),
      ),
    );
  }
}
