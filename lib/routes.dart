import 'package:flutter/material.dart';
import 'package:qulearn/screens/auth/login_screen.dart';
import 'package:qulearn/screens/auth/reset_password_screen.dart';
import 'package:qulearn/screens/auth/signup_screen.dart';
import 'package:qulearn/screens/home/home_screen.dart';
import 'package:qulearn/screens/home/progress_screen.dart';
import 'package:qulearn/screens/home/quiz_generator_screen.dart';
import 'package:qulearn/screens/home/tutor_screen.dart';
import 'package:qulearn/screens/profile/profile_screen.dart';
import 'package:qulearn/screens/profile/settings_screen.dart';
import 'package:qulearn/screens/profile/subscription_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String tutor = '/tutor';
  static const String quiz = '/quiz';
  static const String progress = '/progress';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String subscription = '/subscription';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case tutor:
        return MaterialPageRoute(builder: (_) => const TutorScreen());
      case quiz:
        return MaterialPageRoute(builder: (_) => const QuizGeneratorScreen());
      case progress:
        return MaterialPageRoute(builder: (_) => const ProgressScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case subscription:
        return MaterialPageRoute(builder: (_) => const SubscriptionScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}


