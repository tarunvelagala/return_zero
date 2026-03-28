import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme_constants.dart';

const _apps = ['Chrome', 'Photos', 'Spotify', 'Signal', 'Gmail', 'Notes', 'Calendar', 'Maps'];

class AppList extends StatelessWidget {
  const AppList({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final app in _apps)
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: AppThemeConstants.spacingXxs),
              child: Text(app, style: textTheme.displaySmall),
            ),
          ),
      ],
    );
  }
}
