import 'package:flutter/material.dart';
import 'package:flutter_hello_application/widgets/CourseListRowsCols.dart';
import 'package:flutter_hello_application/widgets/MyContainer.dart';
import 'package:flutter_hello_application/widgets/RowsCols.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.teal,
        // body: MyContainer()
        // body: RowsCols()
        body: CourseListRowsCols(),
      ),
    );
  }
}
