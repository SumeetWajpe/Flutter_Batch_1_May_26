import 'package:bloc_app_flutterdemy/bloc/course.bloc.dart';
import 'package:bloc_app_flutterdemy/widgets/listofcourses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => CourseBloc(), child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: ListOfCourses())),
    );
  }
}
