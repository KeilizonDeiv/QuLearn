import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isPrimary;

  const CustomButton({super.key, required this.label, this.onPressed, this.isPrimary = true});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = isPrimary
        ? FilledButton.styleFrom()
        : OutlinedButton.styleFrom();
    return isPrimary
        ? FilledButton(onPressed: onPressed, style: style, child: Text(label))
        : OutlinedButton(onPressed: onPressed, style: style, child: Text(label));
  }
}


