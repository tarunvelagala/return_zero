import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(child: Text('Hello')),
        ResponsiveRowColumnItem(child: Text('World')),
      ],
    );
  }
}
