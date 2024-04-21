import 'package:course_learning/codeeditor.dart';
import 'package:course_learning/courses.dart';
import 'package:course_learning/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Zunaira Shoaib',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            ),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.teal),
          ),
        ],
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
