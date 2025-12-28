import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/features/home/presentation/home_page.dart';

class ReturnZero extends StatelessWidget {
  const ReturnZero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Return Zero',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
