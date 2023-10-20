import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_icon_button.dart';

class CDialog<T> extends StatelessWidget {
  const CDialog._({
    required this.label,
    required this.child,
    required this.pop,
  });

  final String label;
  final Widget child;
  final Future<void> Function(T result) pop;

  static Future<T?> show<T>(
    BuildContext context, {
    required String label,
    required Widget child,
  }) =>
      showCupertinoDialog<T>(
        context: context,
        builder: (context) => CDialog._(
          label: label,
          pop: context.router.pop,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CThemeColors.cinder,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(CThemeDimens.radiusCContentBox),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: CThemeDimens.sizeCAppBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50.0,
                  alignment: Alignment.centerLeft,
                  child: CIconButton(
                    icon: CupertinoIcons.arrow_left,
                    onPressed: context.router.pop,
                    size: CThemeSize.large,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      style: CThemeStyles.gilroyMedium_20.copyWith(
                        color: CThemeColors.grayCloud,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }
}

// void _showDialog(BuildContext context) {
//   showCupertinoDialog(
//     context: context,
//     builder: (_) =>
//         AlertDialog(
//           backgroundColor: CThemeColors.cinder,
//           contentPadding: EdgeInsets.zero,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(CThemeDimens.radiusCContentBox),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(
//                 height: CThemeDimens.sizeCAppBar,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 100.0,
//                       alignment: Alignment.centerLeft,
//                       child: leading ??
//                           CIconButton(
//                             icon: CupertinoIcons.arrow_left,
//                             onPressed: context.router.pop,
//                             size: CThemeSize.large,
//                           ),
//                     ),
//                     Text(
//                       label,
//                       style: CThemeStyles.gilroyMedium_20.copyWith(
//                         color: CThemeColors.grayCloud,
//                       ),
//                     ),
//                     const SizedBox(width: 100),
//                   ],
//                 ),
//               ),
//               SizedBox.square(
//                 dimension: 200,
//                 child: Container(
//                   color: CThemeColors.cinder,
//                   child: Placeholder(color: CThemeColors.cinder),
//                 ),
//               ),
//             ],
//           ),
//         ),
//   );
// }
