import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  var count;

  @override
  void initState() {
    super.initState();
    count = 100;
  }

  void increment() {
    // increment the count
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count : $count", style: const TextStyle(fontSize: 30)),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: increment, child: const Text("Increment")),
      ],
    );
  }
}
