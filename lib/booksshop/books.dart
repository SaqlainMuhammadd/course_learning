import 'package:course_learning/courses.dart';
import 'package:course_learning/courses/html.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Books Shop',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCourseContainer(
                  'assets/AtomicHabits.png',
                  'Atomic Habits',
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => htmlPage())),
                ),
                SizedBox(width: 15),
                _buildCourseContainer(
                  'assets/css.png',
                  'Learn CSS3',
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => coursesPage())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseContainer(
      String imageAsset, String title, VoidCallback onPressed) {
    return Container(
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.teal.shade100,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            height: 90,
            width: 60,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              color: Colors.teal,
              fontWeight: FontWeight.normal,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Download Now',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
