import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakeme/src/core/presentation/theme/theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/theme_styles.dart';

class CommonSliverAppBar extends StatelessWidget {
  const CommonSliverAppBar({
    this.child,
    this.title,
    this.subtitle,
    this.floating = true,
    this.snap = false,
    this.pinned = false,
    this.rounded = false,
    Key? key,
  })  : assert(child != null || title != null),
        super(key: key);

  final String? title;
  final String? subtitle;
  final Widget? child;
  final bool floating;
  final bool snap;
  final bool pinned;
  final bool rounded;


  static const height = 80.0;
  static const borderRadius = Radius.circular(20.0);
  static const color = ThemeColors.primary;

  @override
  Widget build(BuildContext context) {
    final scaffoldBackgroundColor = Scaffold.of(context).widget.backgroundColor;

    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      pinned: pinned,
      floating: floating,
      snap: snap,
      expandedHeight: height,
      backgroundColor: scaffoldBackgroundColor,
      leading: const SizedBox.shrink(),
      actions: const [],
      flexibleSpace: ClipRRect(
        borderRadius:  const BorderRadius.vertical(bottom: borderRadius),
        child: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          background: Container(
            clipBehavior: Clip.hardEdge,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(
              bottom: 5.0,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                if ( scaffoldBackgroundColor != null)
                  BoxShadow(
                    color: scaffoldBackgroundColor,
                    spreadRadius: 10.0,
                  ),
              ],
              color: color,
            ),
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Row(
                children: [
                  Container(
                    width: kToolbarHeight,
                    alignment: Alignment.centerLeft,
                    child: const SizedBox.shrink(),
                  ),
                  Expanded(
                    child: title != null
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                title!,
                                style: ThemeStyles.albertSansBold.copyWith(
                                  fontSize: 22.0,
                                  color: ThemeColors.white,
                                ),
                              ),
                            ],
                          )
                        : child ?? const SizedBox.shrink(),
                  ),
                  Container(
                    width: kToolbarHeight,
                    alignment: Alignment.centerRight,
                    child: const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
