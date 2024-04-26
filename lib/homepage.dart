import 'package:course_learning/codeeditor.dart';
import 'package:course_learning/courses.dart';
import 'package:course_learning/profile.dart';
import 'package:course_learning/widgets/homepagescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  late PageController _pageController;
  late int _selectedTab;

  @override
  // int _selectedTab = 0;
  void initState() {
    super.initState();
    _selectedTab = 0; // Initialize here
    _pageController = PageController(initialPage: _selectedTab);
  }

  List _pages = [
    homePageScreen(),
    coursesPage(),
    codeEditor(),
    profilePage(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined), label: "Courses"),
          BottomNavigationBarItem(
              icon: Icon(Icons.code_off_outlined), label: "Code Editor"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined), label: "Profile"),
        ],
      ),
    );
  }
}
