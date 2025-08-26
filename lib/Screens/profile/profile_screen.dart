import 'package:flutter/material.dart';
import 'package:qulearn/widgets/responsive_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('Profile')),
      body: ResponsiveBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(radius: 32, child: Icon(Icons.person, size: 32)),
            const SizedBox(height: 12),
            const Text('Student Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const Icon(Icons.workspace_premium_outlined),
                title: const Text('Upgrade to Premium'),
                subtitle: const Text('Unlimited questions and personalized tutoring'),
                trailing: FilledButton(
                  onPressed: () {},
                  child: const Text('Upgrade'),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}


