// ignore: dangling_library_doc_comments
import 'package:bloc_app_flutterdemy/model/course.model.dart';

/// ==========
/// COURSE EVENTS
/// ==========

abstract class CourseEvent {}

class AddCourseEvent extends CourseEvent {
  final CourseModel course;
  AddCourseEvent(this.course);
}

class DeleteCourseEvent extends CourseEvent {
  final int courseId;

  DeleteCourseEvent(this.courseId);
}

class IncrementLikesEvent extends CourseEvent {
  final int courseId;

  IncrementLikesEvent(this.courseId);
}

/// ==========
/// COURSE STATE
/// ==========

class CourseState {
  final List<CourseModel> courses;
  CourseState({required this.courses});
}
