import 'package:flutter/material.dart';
import 'package:qulearn/widgets/progress_chart.dart';
import 'package:qulearn/widgets/responsive_scaffold.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('Progress')),
      body: ResponsiveBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Weekly Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 12),
            ProgressChart(),
          ],
        ),
      ),
    );
  }
}


