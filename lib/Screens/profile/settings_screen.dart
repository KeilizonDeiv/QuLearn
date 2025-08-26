import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            value: isDark,
            onChanged: (_) {},
            title: const Text('Dark Mode'),
          ),
          const ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text('Notifications'),
          ),
        ],
      ),
    );
  }
}


