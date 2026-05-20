import 'package:flutter/material.dart';

class CoursesWithListTileInListView extends StatelessWidget {
  CoursesWithListTileInListView({super.key});

  final List<String> listofcourses = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        ...listofcourses.map(
          (String course) => Text(course, style: TextStyle(fontSize: 30)),
        ),
      ],
    );
  }
}
// [...listofcourses.map((String course) => Text(course))]
 // = 
// [Text("React"),Text("Angular")] 