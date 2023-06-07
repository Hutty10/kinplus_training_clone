import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          '  $text',
          style: theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}