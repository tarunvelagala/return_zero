import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme_constants.dart';

class ClockSection extends StatelessWidget {
  const ClockSection({
    required this.time,
    required this.period,
    required this.elapsed,
    required this.date,
    required this.battery,
    required this.unlocks,
    super.key,
  });

  final String time;
  final String period;
  final String elapsed;
  final String date;
  final String battery;
  final String unlocks;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              spacing: AppThemeConstants.spacingXxs,
              children: [
                Text(time, style: textTheme.displayLarge),
                Text(period, style: textTheme.headlineMedium),
              ],
            ),
            Text('$date, $battery', style: textTheme.titleLarge),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: AppThemeConstants.spacingXxs,
              children: [
                Text('UNLOCKS', style: textTheme.labelSmall),
                Text(unlocks, style: textTheme.titleLarge),
                Text('ELAPSED', style: textTheme.labelSmall),
                Text(elapsed, style: textTheme.titleLarge),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
