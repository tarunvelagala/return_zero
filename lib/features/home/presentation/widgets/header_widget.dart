import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:return_zero/features/home/presentation/widgets/stats_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/time_date_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      // Align text bottoms
      rowCrossAxisAlignment: CrossAxisAlignment.baseline,
      // Required for baseline alignment
      rowTextBaseline: TextBaseline.alphabetic,
      children: [
        ResponsiveRowColumnItem(rowFlex: 1, child: TimeDateWidget()),
        ResponsiveRowColumnItem(rowFlex: 1, child: StatsWidget()),
      ],
    );
  }
}
