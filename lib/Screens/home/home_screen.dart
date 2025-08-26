import 'package:flutter/material.dart';
import 'package:qulearn/screens/home/progress_screen.dart';
import 'package:qulearn/screens/home/quiz_generator_screen.dart';
import 'package:qulearn/screens/home/tutor_screen.dart';
import 'package:qulearn/screens/profile/profile_screen.dart';
import 'package:qulearn/widgets/navigation_bar.dart';
import 'package:qulearn/widgets/navigation_rail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool useRail = width >= 900;

    if (useRail) {
      return Scaffold(
        body: Row(
          children: <Widget>[
            QLNavigationRail(index: _index, onSelected: (int i) => setState(() => _index = i)),
            const VerticalDivider(width: 1),
            Expanded(
              child: IndexedStack(
                index: _index,
                children: const <Widget>[
                  TutorScreen(),
                  QuizGeneratorScreen(),
                  ProgressScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
          ],
        ),
      );
    }

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


