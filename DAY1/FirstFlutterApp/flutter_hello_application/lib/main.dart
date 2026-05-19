import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          color: Colors.white,
          height: 100,
          width: 100,
          margin:EdgeInsets.only(left:30),
          padding:EdgeInsets.all(10),
          child: const Text("Hello Container"),
        ),
      ),
    );
  }
}
