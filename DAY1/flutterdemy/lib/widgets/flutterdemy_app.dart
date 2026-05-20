import 'package:flutter/material.dart';
import 'package:flutterdemy/widgets/basic_listview_courselist.dart';
import 'package:flutterdemy/widgets/listview_courses_listtile.dart';

class FlutterdemyApp extends StatelessWidget {
  const FlutterdemyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutterdemy"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
          // body: BasicListViewCourseList(),
          body: CoursesWithListTileInListView()

      ),
    );
  }
}
