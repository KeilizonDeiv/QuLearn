import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    final ColorScheme scheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      scaffoldBackgroundColor: scheme.surface,
    );
  }

  static ThemeData get dark {
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.dark,
    );
    return ThemeData(
      colorScheme: scheme,
      useMaterial3: true,
      scaffoldBackgroundColor: scheme.surface,
    );
  }
}


