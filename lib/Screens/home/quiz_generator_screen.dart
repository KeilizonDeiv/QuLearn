import 'package:flutter/material.dart';
import 'package:qulearn/widgets/responsive_scaffold.dart';

class QuizGeneratorScreen extends StatelessWidget {
  const QuizGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController topicController = TextEditingController();
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('Quiz Generator')),
      body: ResponsiveBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: topicController,
              decoration: const InputDecoration(
                labelText: 'Topic',
                hintText: 'e.g., Kinematics, Photosynthesis',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () {},
              child: const Text('Generate Quiz'),
            ),
            const SizedBox(height: 24),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, int i) => ListTile(
                leading: const Icon(Icons.help_outline),
                title: Text('Question #${i + 1}'),
                subtitle: const Text('Generated question placeholder'),
                trailing: const Icon(Icons.chevron_right),
              ),
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}


