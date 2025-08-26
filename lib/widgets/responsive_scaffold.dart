import 'package:flutter/material.dart';

class ResponsiveBody extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  const ResponsiveBody({super.key, required this.child, this.maxWidth = 900});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: child,
        ),
      ),
    );
  }
}


