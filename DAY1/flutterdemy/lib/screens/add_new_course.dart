import 'package:flutter/material.dart';

class AddNewCourse extends StatefulWidget {
  const AddNewCourse({super.key});

  @override
  State<AddNewCourse> createState() => _AddNewCourseState();
}

class _AddNewCourseState extends State<AddNewCourse> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int? _id;
  String? _title;

  Widget _buildIdField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Id",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a value.";
        }
        return null;
      },
      onSaved: (value) {
        _id = int.parse(value!);
      },
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Course Title",
        border: OutlineInputBorder(),
      ),
    );
  }

  void _saveCourse() {
    // validate() call validator() in the widget
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!
        .save(); // calls the onSave method on the widget (TextFormField)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New Course",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 116, 3, 136),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildIdField(),
              const SizedBox(height: 16),
              _buildTitleField(),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _saveCourse,
                  child: const Text("Save Course"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
