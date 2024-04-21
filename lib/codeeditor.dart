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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homePage()));
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 25,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
            SizedBox(
              width: 50,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => coursesPage()));
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.assignment,
                      size: 25,
                    ),
                    Text(
                      'Courses',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
            SizedBox(
              width: 50,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => codeEditor()));
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.computer_outlined,
                      size: 25,
                    ),
                    Text(
                      'Code Editor',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
            SizedBox(
              width: 50,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilePage()));
                },
                icon: Column(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      size: 28,
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 8,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
