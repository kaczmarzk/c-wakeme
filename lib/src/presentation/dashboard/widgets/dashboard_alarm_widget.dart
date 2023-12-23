import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_icon_button.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_entity.dart';

class DashboardAlarmWidget extends StatelessWidget {
  const DashboardAlarmWidget({
    required this.alarm,
    required this.onRemove,
    super.key,
  });

  final AlarmEntity alarm;
  final Function(String uuid) onRemove;

  @override
  Widget build(BuildContext context) => Container(
        height: 60.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: CThemeColors.carbonGray,
          ),
        ),
        child: Row(
          children: [
            Text(
              '${alarm.time.hour}:${alarm.time.minute}',
              style: CThemeStyles.gilroyMedium_20.copyWith(
                color: CThemeColors.platinum,
              ),
            ),
            const SizedBox(width: 16.0),
            Text(
              alarm.name ?? '',
              style: CThemeStyles.gilroyMedium_20.copyWith(
                color: CThemeColors.platinum,
              ),
            ),
            const SizedBox(width: 16.0),
            Text(alarm.uuid.substring(0, 15)),
            const Spacer(),
            CIconButton(
              icon: CupertinoIcons.trash,
              onPressed: () => onRemove(alarm.uuid),
            ),
          ],
        ),
      );
}
