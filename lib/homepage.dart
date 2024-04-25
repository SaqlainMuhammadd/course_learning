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

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          homePageScreen(),
          coursesPage(),
          codeEditor(),
          profilePage(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: Color.fromARGB(255, 255, 240, 219),
        controller: _pageController,
        flat: true,
        useActiveColorByDefault: false,
        items: [
          RollingBottomBarItem(
            Icons.home,
            label: 'Home',
            activeColor: Colors.redAccent,
          ),
          RollingBottomBarItem(
            Icons.camera,
            label: 'Camera',
            activeColor: Colors.blueAccent,
          ),
          RollingBottomBarItem(
            Icons.person,
            label: 'Person',
            activeColor: Colors.green,
          ),
          RollingBottomBarItem(
            Icons.person,
            label: 'Person',
            activeColor: Colors.green,
          )
        ],
        enableIconRotation: true,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}

class homePageScreen extends StatelessWidget {
  const homePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page Screen'),
    );
  }
}

class coursesPage extends StatelessWidget {
  const coursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Courses Page'),
    );
  }
}

class codeEditor extends StatelessWidget {
  const codeEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Code Editor'),
    );
  }
}

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: homePage(),
  ));
}
