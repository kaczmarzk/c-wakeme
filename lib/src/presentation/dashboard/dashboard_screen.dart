import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/core/routing/app_router.gr.dart';
import 'package:wakeme/src/common/extensions/build_context_ext.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_rectangle_button.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_square_button.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';
import 'package:wakeme/src/common/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/common/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/presentation/dashboard/cubit/dashboard_screen_cubit.dart';
import 'package:wakeme/src/presentation/dashboard/widgets/dashboard_alarm_widget.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @visibleForTesting
  static Widget get body => const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => inject<DashboardScreenCubit>()..load(),
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

  @override
  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 100.0,
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good ${context.clock.partOfDay.name(context)}!',
                  style: CThemeStyles.gilroyMedium_24.copyWith(
                    color: CThemeColors.platinum,
                  ),
                ),
                Text(
                  DateFormat.MMMMEEEEd().format(context.clock.now()),
                  style: CThemeStyles.gilroyMedium_16.copyWith(
                    color: CThemeColors.softPeach,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 102.0,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                CSquareButton(
                  icon: CupertinoIcons.rocket,
                  size: CThemeSize.small,
                  onPressed: context.read<DashboardScreenCubit>().clearBoxes,
                ),
                const SizedBox(width: 20.0),
                CSquareButton(
                  icon: CupertinoIcons.gear,
                  size: CThemeSize.small,
                  onPressed: () => context.router.push(const SettingsRoute()),
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
                    onPressed: () => context.router.push(const AlarmDetailsRoute()).then(
                          (_) => context.read<DashboardScreenCubit>().load(),
                        ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: BlocBuilder<DashboardScreenCubit, DashboardScreenState>(
              builder: (_, state) {
                if (state.alarms.isEmpty) {
                  return Text(
                    'No alarms',
                    style: CThemeStyles.gilroyMedium_20.copyWith(
                      color: CThemeColors.platinum,
                    ),
                  );
                }

                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.alarms.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                  itemBuilder: (_, i) => DashboardAlarmWidget(
                    alarm: state.alarms[i],
                    onRemove: (uuid) => _onRemoveAlarm(context, uuid),
                  ),
                );
              },
            ),
          ),
        ],
      );

  void _onRemoveAlarm(BuildContext context, String uuid) {
    final cubit = context.read<DashboardScreenCubit>();
    cubit.removeAlarm(uuid);
    cubit.load();
  }
}
