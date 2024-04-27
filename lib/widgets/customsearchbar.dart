import 'package:flutter/material.dart';

class customSearchbar extends StatefulWidget {
  const customSearchbar({super.key});

  @override
  State<customSearchbar> createState() => _customSearchbarState();
}

class _customSearchbarState extends State<customSearchbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Search your course')),
      ),
    );
  }
}
