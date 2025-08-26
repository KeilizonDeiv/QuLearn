import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subscription')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Free vs Premium', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            const Text('Free: 5 questions/day'),
            const Text('Premium: Unlimited + personalized tutoring'),
            const SizedBox(height: 16),
            FilledButton(onPressed: () {}, child: const Text('Upgrade to Premium')),
          ],
        ),
      ),
    );
  }
}


