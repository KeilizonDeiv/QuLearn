import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('Progress')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Weekly Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 12),
            Expanded(
              child: Center(
                child: Text('Chart placeholder'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


