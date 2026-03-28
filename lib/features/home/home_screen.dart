import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme_constants.dart';
import 'package:return_zero/features/home/widgets/app_list.dart';
import 'package:return_zero/features/home/widgets/clock_section.dart';
import 'package:return_zero/features/home/widgets/info_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppThemeConstants.paddingScreenHorizontal,
          right: AppThemeConstants.paddingScreenHorizontal,
          top: AppThemeConstants.paddingScreenTop,
          bottom: AppThemeConstants.paddingScreenBottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ClockSection(
                      time: '01:43',
                      period: 'pm',
                      elapsed: '1h 12m',
                      unlocks: '2',
                      date: 'Fri, 15 Nov',
                      battery: '90%',
                    ),
                    const SizedBox(height: AppThemeConstants.spacingL),
                    const InfoSection(
                      label: 'CALENDAR EVENTS',
                      title: 'Design Sync',
                      subtitle: '10:00 AM — 11:00 AM',
                    ),
                    const SizedBox(height: AppThemeConstants.spacingM),
                    const InfoSection(
                      label: 'NOTES',
                      title: '— Finalize Return Zero mockups',
                    ),
                  ],
                ),
              ),
            ),
            const AppList(),
          ],
        ),
      ),
    );
  }
}
