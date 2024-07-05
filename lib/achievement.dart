import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  final List<String> achievements = [
    'Completed Flutter Course',
    'Completed HTML Course',
    'Completed CSS Course',
    'Completed JavaScript Course',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Achievements',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                achievements[index],
                style: TextStyle(color: Colors.teal, fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
