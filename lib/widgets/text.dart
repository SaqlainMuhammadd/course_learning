import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  String text;
  Color? color;
  Heading({
    super.key,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: width * 0.05,
          fontWeight: FontWeight.w500,
          color: color ?? Colors.black),
    );
  }
}

class Subheading extends StatelessWidget {
  Subheading({
    super.key,
    required this.text,
    this.color,
    this.overflow,
    this.maxLines,
  });
  final String text;
  final Color? color;
  TextOverflow? overflow;
  final maxLines;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow ?? null,
      style: TextStyle(
          fontSize: width * 0.035, color: color, fontWeight: FontWeight.w500),
    );
  }
}

class Subheading2 extends StatelessWidget {
  Subheading2({
    super.key,
    this.overflow,
    required this.text,
    this.color,
  });
  final String text;
  final Color? color;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        overflow: overflow ?? null,
        fontSize: width * 0.035,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

class Subsmallheading extends StatelessWidget {
  const Subsmallheading({
    super.key,
    required this.text,
    this.color,
  });
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
          fontSize: width * 0.03, color: color, fontWeight: FontWeight.w500),
    );
  }
}
