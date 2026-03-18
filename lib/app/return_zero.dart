import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme.dart';

class ReturnZero extends StatelessWidget {
  const ReturnZero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Return Zero',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 16),
                Text('Return Zero', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                Text('Return Zero', style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'Return Zero',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
