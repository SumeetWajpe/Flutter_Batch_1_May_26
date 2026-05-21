import 'package:flutter/material.dart';
import 'package:flutterdemy/models/courselist_changenotifier_model.dart';
import 'package:provider/provider.dart';

class TotalCourseCount extends StatelessWidget {
  const TotalCourseCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CourseListNotifier>(
      builder: (_, courseListChangeNotifier, __) => Container(
        margin: const EdgeInsets.all(20.0),
        child: Text(
          "Total Courses : ${courseListChangeNotifier.listofcourses.length}",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),
      ),
    );
  }
}
