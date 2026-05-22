import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _title;

  Widget _buildTitleField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Title",
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Course"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 116, 3, 136),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(children: <Widget>[_buildTitleField()]),
        ),
      ),
    );
  }
}
