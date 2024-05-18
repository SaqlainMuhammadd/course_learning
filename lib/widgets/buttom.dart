import 'package:course_learning/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cbutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final double? decoration;
  final Color? txtcolor;
  final Color? bordercolor;
  final double? txtsize;
  final BorderRadius? borderRadius;
  // final double? shadowRadius;
  final double? borderradius;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;

  const Cbutton({
    super.key,
    required this.onTap,
    required this.text,
    this.bgcolor = const Color(0xffD1D1D1),
    this.txtcolor = Colors.black,
    this.borderRadius,
    // this.elevation = 2.0,
    // this.shadowRadius = 4.0,
    this.width,
    this.height,
    this.decoration,
    this.borderradius = 4,
    this.fontWeight = FontWeight.normal,
    this.padding,
    this.txtsize,
    this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    final double width1 = MediaQuery.of(context).size.width;
    final double height1 = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: width ?? width1 * 0.3,
          height: height ?? height1 * 0.06,
          // padding: padding ?? const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bgcolor,
            border: Border.all(color: bordercolor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderradius!),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.2),
            //     offset: Offset(0.0, shadowRadius!),
            //     blurRadius: shadowRadius!,
            //   ),
            // ],
          ),
          child: Center(
              child: Subheading(
            text: text,
            color: Colors.black,
          )),
        ),
      ),
    );
  }
}

class UiButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double? width;
  final double? height;
  final Color? bgcolor;
  final double? decoration;
  final Color? txtcolor;
  final Color? bordercolor;
  final double? txtsize;
  final BorderRadius? borderRadius;
  // final double? shadowRadius;
  final double? borderradius;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;

  const UiButton({
    super.key,
    required this.onTap,
    required this.text,
    this.bgcolor = const Color(0xffD1D1D1),
    this.txtcolor = Colors.black,
    this.borderRadius,
    // this.elevation = 2.0,
    // this.shadowRadius = 4.0,
    this.width,
    this.height,
    this.decoration,
    this.borderradius = 4,
    this.fontWeight = FontWeight.normal,
    this.padding,
    this.txtsize,
    this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    final double width1 = MediaQuery.of(context).size.width;
    final double height1 = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: width ?? width1 * 0.3,
          height: height ?? height1 * 0.06,
          // padding: padding ?? const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bgcolor,
            border: Border.all(color: bordercolor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderradius!),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.2),
            //     offset: Offset(0.0, shadowRadius!),
            //     blurRadius: shadowRadius!,
            //   ),
            // ],
          ),
          child: Center(
              child: Subheading(
            text: text,
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}
