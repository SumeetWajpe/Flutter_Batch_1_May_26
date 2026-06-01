import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Using Theme"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Text(
            "Styled with Text theme !",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
