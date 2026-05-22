import 'package:flutter/material.dart';
import 'package:flutterdemy/screens/add_new_course.dart';
import 'package:flutterdemy/widgets/total_courses.dart';
import 'package:flutterdemy/widgets/courses_listtile_listviewbuilder.dart';

class FlutterdemyApp extends StatelessWidget {
  const FlutterdemyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutterdemy", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 116, 3, 136),
      ),
      // body: BasicListViewCourseList(),
      // body: CoursesWithListTileInListView()
      // body: MyCounter(),
      body: Column(
        children: <Widget>[
          Expanded(child: CoursesWithListTileIncrementLikes()),
          TotalCourseCount(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to AddNewCourse Screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewCourse()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 116, 3, 136),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
