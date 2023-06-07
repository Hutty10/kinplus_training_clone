import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isSelected = false,
  });
  final VoidCallback onPressed;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
        onPressed;
      },
      style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isSelected ? Colors.white10 : null),
      child: Text(text),
    );
  }
}
