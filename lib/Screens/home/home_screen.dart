import 'package:flutter/material.dart';
import 'package:qulearn/screens/home/progress_screen.dart';
import 'package:qulearn/screens/home/quiz_generator_screen.dart';
import 'package:qulearn/screens/home/tutor_screen.dart';
import 'package:qulearn/screens/profile/profile_screen.dart';
import 'package:qulearn/widgets/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: const <Widget>[
          TutorScreen(),
          QuizGeneratorScreen(),
          ProgressScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: QLNavigationBar(
        index: _index,
        onSelected: (int i) => setState(() => _index = i),
      ),
    );
  }
  // Each tab screen provides its own AppBar
}


