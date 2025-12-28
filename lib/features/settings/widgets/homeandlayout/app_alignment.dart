import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_typography.dart';
import 'package:return_zero/features/settings/widgets/common/settings_row.dart';

class AppAlignment extends StatefulWidget {
  const AppAlignment({super.key});

  @override
  State<AppAlignment> createState() => _AppAlignmentState();
}

class _AppAlignmentState extends State<AppAlignment> {
  @override
  Widget build(BuildContext context) {
    return SettingsRow(
      label: 'App Alignment',
      control: Text(
        'Center',
        style: AppTypography.bodyMedium(
          context,
          scaleFactor: AppTypography.defaultScaleFactor,
        ),
      ),
    );
  }
}
