import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_theme_constants.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    required this.label,
    required this.title,
    this.subtitle,
    super.key,
  });

  final String label;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: textTheme.labelSmall),
        const SizedBox(height: AppThemeConstants.spacingXxs),
        Text(title, style: textTheme.titleLarge),
        if (subtitle != null) Text(subtitle!, style: textTheme.bodyMedium),
      ],
    );
  }
}
