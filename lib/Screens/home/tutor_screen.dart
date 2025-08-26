import 'package:flutter/material.dart';

class TutorScreen extends StatelessWidget {
  const TutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('AI Tutor')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Ask a question',
                hintText: 'Explain Newton’s 3rd law step by step',
                border: OutlineInputBorder(),
              ),
              minLines: 1,
              maxLines: 4,
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () {},
              child: const Text('Ask'),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.surfaceVariant,
                ),
                child: const Text('Response will appear here...'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


