import 'package:flutter/material.dart';
import 'package:flutterdemy/models/courselist_changenotifier_model.dart';
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
              Expanded(child: CoursesWithListTileIncrementLikes()),
              TotalCourseCount(),
            ],
          ),
        ),
      ),
    );
  }
}
