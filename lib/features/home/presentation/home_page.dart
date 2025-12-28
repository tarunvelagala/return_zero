import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:return_zero/features/home/presentation/widgets/header_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/instructions_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/pinned_apps_widget.dart';
import 'package:return_zero/features/settings/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _openSettingsPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SettingsPage(),
        // Remove transition animations
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        },
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onLongPress: () => _openSettingsPage(context),
          child: Container(color: Colors.transparent),
        ),
        ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(columnFlex: 1, child: HeaderWidget()),
            ResponsiveRowColumnItem(columnFlex: 2, child: PinnedAppsWidget()),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: InstructionsWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
