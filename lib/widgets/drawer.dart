import 'package:flutter/material.dart';

import './button.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(Icons.close),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            MyTextButton(
              onPressed: () {},
              text: 'HOME',
            ),
            MyTextButton(
              onPressed: () {},
              text: 'ABOUT',
            ),
            MyTextButton(
              onPressed: () {},
              text: 'TRAINING',
              isSelected: true,
            ),
            MyTextButton(
              onPressed: () {},
              text: 'CONTACT',
            ),
            MyTextButton(
              onPressed: () {},
              text: 'INTERNSHIP',
            ),
            MyTextButton(
              onPressed: () {},
              text: 'IT / SIWES',
            ),
          ],
        ),
      ),
    );
  }
}
