import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:return_zero/features/drawer/presentation/drawer_page.dart';
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

  void _openDrawerPage(BuildContext context) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const DrawerPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // This creates a Slide Up animation
        const begin = Offset(0.0, 1.0); // Start at bottom
        const end = Offset.zero;        // End at top
        const curve = Curves.easeOutCubic;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
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
          onVerticalDragEnd: (details) {
            if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
              _openDrawerPage(context);
            }
          },
          child: Container(color: Colors.transparent),
        ),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(columnFlex: 1, columnFit: FlexFit.tight, child: HeaderWidget()),
              ResponsiveRowColumnItem(columnFlex: 2, columnFit: FlexFit.tight, child: PinnedAppsWidget()),
              ResponsiveRowColumnItem(
                columnFlex: 1,
                columnFit: FlexFit.tight,
                child: InstructionsWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
