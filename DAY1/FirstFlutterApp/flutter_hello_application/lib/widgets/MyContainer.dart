import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      width: 100,
      margin: EdgeInsets.only(left: 30),
      padding: EdgeInsets.all(10),
      child: const Text("Hello Container"),
    );
  }
}
