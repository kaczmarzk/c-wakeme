import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/c_core/c_component.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_icon_button.dart';

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
    return Stack(
      children: [
        _CDialogBackground(
          onTap: () => context.router.pop(),
        ),
        AlertDialog(
          backgroundColor: CThemeColors.cinder,
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60.0,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
        ),
      ],
    );
  }
}

class _CDialogBackground extends StatelessWidget {
  const _CDialogBackground({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: CThemeColors.cinder.withOpacity(0.5),
      ),
    );
  }
}
