import 'package:course_learning/courses.dart';
import 'package:course_learning/homepage.dart';
import 'package:course_learning/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class codeEditor extends StatefulWidget {
  const codeEditor({super.key});

  @override
  State<codeEditor> createState() => _codeEditorState();
}

class _codeEditorState extends State<codeEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(
          'Code Editor',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
