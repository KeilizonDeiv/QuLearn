import 'package:flutter/material.dart';

class QLNavigationRail extends StatelessWidget {
  final int index;
  final ValueChanged<int> onSelected;

  const QLNavigationRail({super.key, required this.index, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: index,
      onDestinationSelected: onSelected,
      labelType: NavigationRailLabelType.all,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(icon: Icon(Icons.chat_bubble_outline), label: Text('Tutor')),
        NavigationRailDestination(icon: Icon(Icons.quiz_outlined), label: Text('Quizzes')),
        NavigationRailDestination(icon: Icon(Icons.insights_outlined), label: Text('Progress')),
        NavigationRailDestination(icon: Icon(Icons.person_outline), label: Text('Profile')),
      ],
    );
  }
}


