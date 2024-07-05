import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.75);

    path.quadraticBezierTo(
      size.width / 4,
      size.height * 0.9,
      size.width / 2,
      size.height * 0.75,
    );

    path.quadraticBezierTo(
      3 / 4 * size.width,
      size.height * 0.6,
      size.width,
      size.height * 0.75,
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
