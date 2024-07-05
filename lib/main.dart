import 'package:course_learning/achievement.dart';
import 'package:course_learning/auth/login.dart';
import 'package:course_learning/editprofile.dart';
import 'package:course_learning/profile.dart';
import 'package:course_learning/splash.dart';
import 'package:course_learning/widgets/homepagescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'key',
    appId: 'id',
    messagingSenderId: 'sendid',
    projectId: 'myapp',
    storageBucket: 'myapp-b9yt18.appspot.com',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Mingle',
      theme: ThemeData(
          textTheme: TextTheme(
              bodyMedium: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.teal)),
      home: SplashScreen(),
    );
  }
}
