import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_rectangle_button.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_square_button.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/routing/app_router.gr.dart';
import 'package:wakeme/src/core/utils/enum/part_of_the_day.dart';
import 'package:wakeme/src/features/dashboard/cubit/dashboard_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<DashboardScreenCubit>()..fetchBuzzers(),
      child: const CScaffold(
        bottom: false,
        horizontal: false,
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  void _handleNavigationState(BuildContext context, DashboardScreenNavigationState state) => switch (state) {
        DashboardScreenNavigationState.details => context.router.push(const AlarmDetailsRoute()),
        DashboardScreenNavigationState.settings => null,
        DashboardScreenNavigationState.none => null,
      };

  @override
  Widget build(BuildContext context) => BlocConsumer<DashboardScreenCubit, DashboardScreenState>(
        listener: (_, state) => _handleNavigationState(context, state.navigation),
        builder: (_, state) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 100.0,
                padding: const EdgeInsets.symmetric(horizontal: CThemeDimens.paddingCScaffold),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good ${PartOfTheDay.current.name}!',
                      style: CThemeStyles.gilroyMedium_24.copyWith(
                        color: CThemeColors.platinum,
                      ),
                    ),
                    Text(
                      DateFormat.MMMMEEEEd().format(DateTime.now()),
                      style: CThemeStyles.gilroyMedium_16.copyWith(
                        color: CThemeColors.softPeach,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 102.0,
                padding: const EdgeInsets.symmetric(horizontal: CThemeDimens.paddingCScaffold),
                child: Row(
                  children: [
                    Expanded(
                      child: CContentBox(
                        padding: const EdgeInsets.all(10.0).copyWith(
                          left: 12.0,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next alarm',
                              style: CThemeStyles.gilroyMedium_20.copyWith(
                                color: CThemeColors.platinum,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              'No scheduled alarm',
                              style: CThemeStyles.gilroyMedium_16.copyWith(
                                color: CThemeColors.softPeach,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 14.0),
                    Expanded(
                      child: CContentBox(
                        padding: const EdgeInsets.all(10.0).copyWith(
                          left: 12.0,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Timer',
                              style: CThemeStyles.gilroyMedium_20.copyWith(
                                color: CThemeColors.platinum,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              'No scheduled timer',
                              style: CThemeStyles.gilroyMedium_16.copyWith(
                                color: CThemeColors.softPeach,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: CThemeDimens.paddingCScaffold,
                ),
                child: Row(
                  children: [
                    CSquareButton(
                      icon: CupertinoIcons.rocket,
                      size: CThemeSize.small,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20.0),
                    CSquareButton(
                      icon: CupertinoIcons.gear,
                      size: CThemeSize.small,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20.0),
                    CSquareButton.invert(
                      icon: CupertinoIcons.timer,
                      size: CThemeSize.small,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20.0),
                    CSquareButton.invert(
                      icon: CupertinoIcons.bolt,
                      size: CThemeSize.small,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: CRectangleButton.invert(
                        icon: CupertinoIcons.add,
                        label: 'Add',
                        size: CThemeSize.small,
                        onPressed: context.read<DashboardScreenCubit>().onAddPressed,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: CThemeDimens.paddingCScaffold,
                ),
                child: BlocBuilder<DashboardScreenCubit, DashboardScreenState>(
                  builder: (_, state) {
                    if (state.buzzers.isEmpty) {
                      return Text(
                        'No alarms',
                        style: CThemeStyles.gilroyMedium_20.copyWith(
                          color: CThemeColors.platinum,
                        ),
                      );
                    }

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcoming alarms',
                          style: CThemeStyles.gilroyMedium_20.copyWith(
                            color: CThemeColors.platinum,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: state.buzzers.length,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                          itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(state.buzzers[index].label),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      );
}
