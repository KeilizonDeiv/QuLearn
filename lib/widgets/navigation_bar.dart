import 'package:flutter/material.dart';

class QLNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onSelected;

  const QLNavigationBar({super.key, required this.index, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: onSelected,
      destinations: const <NavigationDestination>[
        NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: 'Tutor'),
        NavigationDestination(icon: Icon(Icons.quiz_outlined), label: 'Quizzes'),
        NavigationDestination(icon: Icon(Icons.insights_outlined), label: 'Progress'),
        NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}


