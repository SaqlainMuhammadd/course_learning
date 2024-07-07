import 'package:flutter/material.dart';
import 'package:course_learning/courses/charp.dart';
import 'package:course_learning/courses/cplusplus.dart';
import 'package:course_learning/courses/css.dart';
import 'package:course_learning/courses/dart.dart';
import 'package:course_learning/courses/flutter.dart';
import 'package:course_learning/courses/html.dart';
import 'package:course_learning/courses/java.dart';
import 'package:course_learning/courses/js.dart';
import 'package:course_learning/courses/python.dart';
import 'package:course_learning/courses/sql.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    "HTML3",
    "CSS3",
    "JavaScript",
    "Python",
    "Java",
    "Flutter",
    "Web development",
    "App Development",
    "C#",
    "C++",
    "Dart",
    "SQL"
  ];
  List<String> searchResults = [];
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void onResultTap(String result) {
    Widget page;
    switch (result.toLowerCase()) {
      case 'html3':
        page = htmlPage();
        break;
      case 'css3':
        page = cssPage();
        break;
      case 'javascript':
        page = jsPage();
        break;
      case 'python':
        page = pythonPage();
        break;
      case 'java':
        page = javaPage();
        break;
      case 'flutter':
        page = flutterModel();
        break;
      case 'c#':
        page = csharpPage();
        break;
      case 'c++':
        page = cplusplusPage();
        break;
      case 'dart':
        page = dartPage();
        break;
      case 'sql':
        page = sqlPage();
        break;
      default:
        page = Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('Page not found'),
          ),
        );
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Search Screen',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
        children: [
          SearchBar(onQueryChanged: onQueryChanged),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]),
                  onTap: () => onResultTap(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final Function(String) onQueryChanged;

  SearchBar({required this.onQueryChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 430,
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: onQueryChanged,
            decoration: InputDecoration(
              labelText: 'Search',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}
