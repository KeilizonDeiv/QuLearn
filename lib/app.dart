import 'package:flutter/material.dart';
import 'package:qulearn/routes.dart';
import 'package:qulearn/utils/app_theme.dart';

class QuLearnApp extends StatelessWidget {
  const QuLearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuLearn',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}


