import 'package:bloc_app_flutterdemy/bloc/course.bloc.dart';
import 'package:bloc_app_flutterdemy/widgets/course.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfCourses extends StatelessWidget {
  const ListOfCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseBloc,CourseState>(builder: (context, state) {
       return ListView.builder(
          itemCount: state.courses.length,
          itemBuilder: (context, index) {
            return CourseWidget(course: state.courses[index]);
          },
        );
    });
  }
}