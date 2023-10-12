import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_circle_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_icon_button.dart';
import 'package:wakeme/src/core/routing/app_router.gr.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/cubit/buzzers_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';

@RoutePage()
class BuzzersScreen extends StatelessWidget {
  const BuzzersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<BuzzersScreenCubit>()..fetchBuzzers(),
      child: const CScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<BuzzersScreenCubit, BuzzersScreenState>(
        builder: (_, state) => Column(
          children: [
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello wednesday!',
                        style: CThemeStyles.gilroyMedium_26.copyWith(
                          color: CThemeColors.platinum,
                        ),
                      ),
                      Text(
                        'Ring in 16 hours.',
                        style: CThemeStyles.gilroyMedium_20.copyWith(
                          color: CThemeColors.softPeach,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CIconButton(
                        icon: CupertinoIcons.back,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10.0),
                      CIconButton(
                        icon: CupertinoIcons.arrow_counterclockwise,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: CCircleFloatingButton(
                icon: CupertinoIcons.add,
                onPressed: () => context.router.push(const BuzzerDetailsRoute()),
              ),
            ),
          ],
        ),
      );
}
