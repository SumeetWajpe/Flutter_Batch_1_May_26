import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String errormsg;
  const ErrorPage({super.key, required this.errormsg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("Error -  Something went wrong !")),
          Text(errormsg, style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
