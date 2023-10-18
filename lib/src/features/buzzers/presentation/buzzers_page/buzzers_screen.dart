import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_icon_button.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_square_button.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/routing/app_router.gr.dart';
import 'package:wakeme/src/core/utils/enum/part_of_the_day.dart';
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
        bottom: false,
        horizontal: false,
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  void _handleNavigationState(BuildContext context, BuzzersScreenNavigationState state) => switch (state) {
        BuzzersScreenNavigationState.details => context.router.push(const BuzzerDetailsRoute()),
        BuzzersScreenNavigationState.settings => null,
        BuzzersScreenNavigationState.none => null,
      };

  @override
  Widget build(BuildContext context) => BlocConsumer<BuzzersScreenCubit, BuzzersScreenState>(
        listener: (_, state) => _handleNavigationState(context, state.navigation),
        builder: (_, state) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 100.0,
                padding: const EdgeInsets.symmetric(horizontal: CThemeDimens.paddingCScaffold),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
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
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CIconButton(
                          icon: CupertinoIcons.add,
                          onPressed: context.read<BuzzersScreenCubit>().onAddClicked,
                          size: CThemeSize.large,
                        ),
                        const SizedBox(width: 10.0),
                        CIconButton(
                          icon: CupertinoIcons.gear_alt,
                          onPressed: context.read<BuzzersScreenCubit>().onBellClicked,
                          size: CThemeSize.large,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 100.0,
                padding: const EdgeInsets.symmetric(horizontal: CThemeDimens.paddingCScaffold),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CContentBox(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next ring',
                              style: CThemeStyles.gilroyMedium_16.copyWith(
                                color: CThemeColors.carbonGray,
                              ),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              'Ring in 16 hours.',
                              style: CThemeStyles.gilroyMedium_16.copyWith(
                                color: CThemeColors.softPeach,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CSquareButton(
                            icon: CupertinoIcons.bell,
                            size: CThemeSize.small,
                            onPressed: () {},
                          ),
                          const SizedBox(height: 10.0),
                          CSquareButton.invert(
                            icon: CupertinoIcons.alarm,
                            size: CThemeSize.small,
                            onPressed: () {},
                          ),
                        ],
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
                child: Column(
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
                    BlocBuilder<BuzzersScreenCubit, BuzzersScreenState>(
                      builder: (_, state) => ListView.separated(
                        shrinkWrap: true,
                        itemCount: state.buzzers.length,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                        itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(state.buzzers[index].label),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
}
