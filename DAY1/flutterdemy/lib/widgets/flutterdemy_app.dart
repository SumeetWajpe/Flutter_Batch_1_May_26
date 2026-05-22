import 'package:flutter/material.dart';
import 'package:flutterdemy/models/course_model.dart';
import 'package:flutterdemy/models/courselist_changenotifier_model.dart';
import 'package:flutterdemy/screens/course_details.dart';
import 'package:flutterdemy/widgets/total_courses.dart';
import 'package:provider/provider.dart';
import 'package:flutterdemy/widgets/basic_listview_courselist.dart';
import 'package:flutterdemy/widgets/basicstatefulwidget.dart';
import 'package:flutterdemy/widgets/courses_listtile_listviewbuilder.dart';
import 'package:flutterdemy/widgets/listview_courses_listtile.dart';

class FlutterdemyApp extends StatelessWidget {
  const FlutterdemyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CourseListNotifier(),
      child: MaterialApp(
        title: 'Flutter Demo',

        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutterdemy"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          // body: BasicListViewCourseList(),
          // body: CoursesWithListTileInListView()
          // body: MyCounter(),
          body: Column(
            children: <Widget>[
              // Expanded(child: CoursesWithListTileIncrementLikes()),
              // TotalCourseCount(),
              CourseDetails(
                CourseModel(
                  4,
                  "Flutter",
                  "A Cross Platform solution",
                  200,
                  "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
                  "Flutter is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. ",
                  5,
                  DateTime.now().subtract(const Duration(days: 10)),
                  "English",
                  ["English", "German", "Spanish"],
                  "Jacob Mansion",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
