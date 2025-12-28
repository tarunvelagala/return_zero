import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:return_zero/features/home/presentation/header_widget.dart';
import 'package:return_zero/features/home/presentation/onboarding_instructions.dart';
import 'package:return_zero/features/home/presentation/pinned_apps.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(columnFlex: 1,child: HeaderWidget(),),
        ResponsiveRowColumnItem(columnFlex: 2,child: PinnedApps(),),
        ResponsiveRowColumnItem(columnFlex: 1,child: OnboardingInstructions(),),
      ],
    );
  }
}
