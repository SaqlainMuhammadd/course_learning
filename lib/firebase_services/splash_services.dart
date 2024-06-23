import 'dart:async';

import 'package:course_learning/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            )));
  }
}
