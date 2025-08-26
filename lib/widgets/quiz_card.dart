import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const QuizCard({super.key, required this.title, required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.help_outline),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}


