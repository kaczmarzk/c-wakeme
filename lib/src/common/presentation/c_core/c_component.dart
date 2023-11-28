import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';

abstract class CComponent extends StatelessWidget {
  const CComponent({
    this.size = CThemeSize.large,
    this.style = CThemeStyle.base,
    super.key,
  });

  final CThemeStyle style;
  final CThemeSize size;

  CComponentColors get cColors => switch (style) {
        CThemeStyle.base => CComponentColors(
            background: CThemeColors.darkJungle,
            foregroundPrimary: CThemeColors.platinum,
            foregroundSecondary: CThemeColors.softPeach,
            pressColor: CThemeColors.cinder.withOpacity(0.33),
          ),
        CThemeStyle.invert => CComponentColors(
            background: CThemeColors.softPeach,
            foregroundPrimary: CThemeColors.darkJungle,
            foregroundSecondary: CThemeColors.balticSea,
            pressColor: CThemeColors.cinder.withOpacity(0.33),
          ),
      };

  double get cDimension => throw UnimplementedError();

  double get cRadius => throw UnimplementedError();
}

abstract class CStatefulComponent extends StatefulWidget {
  const CStatefulComponent({
    this.size = CThemeSize.large,
    this.style = CThemeStyle.base,
    super.key,
  });

  final CThemeStyle style;
  final CThemeSize size;

  CComponentColors get cColors => switch (style) {
        CThemeStyle.base => CComponentColors(
            background: CThemeColors.darkJungle,
            foregroundPrimary: CThemeColors.platinum,
            foregroundSecondary: CThemeColors.softPeach,
            pressColor: CThemeColors.cinder.withOpacity(0.33),
          ),
        CThemeStyle.invert => CComponentColors(
            background: CThemeColors.softPeach,
            foregroundPrimary: CThemeColors.darkJungle,
            foregroundSecondary: CThemeColors.balticSea,
            pressColor: CThemeColors.cinder.withOpacity(0.33),
          ),
      };

  double get cDimension => throw UnimplementedError();

  double get cRadius => throw UnimplementedError();
}

/// enums to organize component size and component style
enum CThemeSize { small, large }

enum CThemeStyle { base, invert }

class CComponentColors {
  CComponentColors({
    required this.background,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.pressColor,
  });

  final Color background;
  final Color foregroundPrimary;
  final Color foregroundSecondary;

  /// inkwell press color
  final Color pressColor;
}
