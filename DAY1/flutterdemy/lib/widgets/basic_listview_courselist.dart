import 'package:flutter/material.dart';

class BasicListViewCourseList extends StatelessWidget {
  BasicListViewCourseList({super.key});

  final List<String> listofcourses = ["React", "Angular", "Vue", "Flutter"];

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