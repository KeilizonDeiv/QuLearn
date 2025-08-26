import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;

  const MaterialCard({super.key, required this.title, required this.description, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.menu_book_outlined),
        title: Text(title),
        subtitle: Text(description),
        onTap: onTap,
      ),
    );
  }
}


