import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.amber,
          height: 100,
          width: 100,
          // width: double.infinity,
          padding: EdgeInsets.all(10),
          child: const Text("Hello"),
        ),
        Container(
          color: const Color.fromARGB(255, 66, 184, 72),
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          child: const Text("Hola"),
        ),
        Container(
          color: const Color.fromARGB(255, 204, 96, 81),
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          child: const Text("Bye"),
        ),
      ],
    );
  }
}
