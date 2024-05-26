import 'package:flutter/material.dart';

class RoadmapPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Web Development',
      'icon': Icons.web,
      'roadmap': [
        'Learn HTML',
        'Learn CSS',
        'Learn JavaScript',
        'Understand Responsive Design',
        'Learn Frontend Frameworks (React, Angular, Vue)',
        'Backend Development (Node.js, Django, Flask)',
        'Database Management',
        'Deploy and Maintain Websites',
      ],
    },
    {
      'title': 'App Development',
      'icon': Icons.phone_android,
      'roadmap': [
        'Learn Dart and Flutter',
        'Understand Widgets',
        'State Management',
        'Networking',
        'Database Integration',
        'Publish on App Stores',
      ],
    },
    {
      'title': 'Data Structure and Algorithms',
      'icon': Icons.memory,
      'roadmap': [
        'Learn basic data structures (arrays, linked lists)',
        'Understand complex data structures (trees, graphs)',
        'Learn algorithms (sorting, searching)',
        'Practice coding problems',
        'Understand time and space complexity',
      ],
    },
    {
      'title': 'Digital Marketing',
      'icon': Icons.mark_email_read,
      'roadmap': [
        'Understand SEO',
        'Learn about content marketing',
        'Social media marketing strategies',
        'Email marketing campaigns',
        'Learn about PPC advertising',
      ],
    },
    {
      'title': 'Graphic Designing',
      'icon': Icons.design_services,
      'roadmap': [
        'Learn the basics of design',
        'Understand color theory',
        'Learn typography',
        'Practice with design tools (Photoshop, Illustrator)',
        'Create a portfolio',
      ],
    },
    {
      'title': 'Video Editing',
      'icon': Icons.video_call,
      'roadmap': [
        'Learn video editing basics',
        'Understand different video formats',
        'Practice with editing software (Premiere Pro, Final Cut)',
        'Learn about sound editing',
        'Create a video portfolio',
      ],
    },
    {
      'title': 'HTML',
      'icon': Icons.code,
      'roadmap': [
        'Understand HTML syntax and structure',
        'Learn about HTML tags',
        'Create forms and tables',
        'Implement semantic HTML',
        'Work with multimedia elements',
      ],
    },
    {
      'title': 'CSS',
      'icon': Icons.palette,
      'roadmap': [
        'Understand CSS syntax and selectors',
        'Learn about the box model',
        'Implement layouts with Flexbox and Grid',
        'Work with responsive design',
        'Use animations and transitions',
      ],
    },
    {
      'title': 'JavaScript',
      'icon': Icons.javascript,
      'roadmap': [
        'Understand JavaScript syntax',
        'Learn about data types and variables',
        'Implement functions and control flow',
        'Work with the DOM',
        'Understand event handling',
        'Learn about ES6+ features',
      ],
    },
    {
      'title': 'Java',
      'icon': Icons.code,
      'roadmap': [
        'Understand Java syntax and structure',
        'Learn about object-oriented programming',
        'Work with Java libraries and frameworks',
        'Implement data structures and algorithms in Java',
        'Build and run Java applications',
      ],
    },
    {
      'title': 'Dart',
      'icon': Icons.developer_mode,
      'roadmap': [
        'Understand Dart syntax and structure',
        'Learn about object-oriented programming',
        'Work with Dart packages and libraries',
        'Implement asynchronous programming',
        'Build and run Dart applications',
      ],
    },
    {
      'title': 'SQL',
      'icon': Icons.storage,
      'roadmap': [
        'Understand SQL syntax and structure',
        'Learn about different types of databases',
        'Work with SQL queries and commands',
        'Implement database design and normalization',
        'Use SQL with programming languages',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Roadmaps',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ExpansionTile(
              leading: Icon(category['icon'], size: 40, color: Colors.teal),
              title: Text(
                category['title'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: (category['roadmap'] as List<String>).map((step) {
                return ListTile(
                  title: Text(step),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
