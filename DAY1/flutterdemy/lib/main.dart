import 'package:flutter/material.dart';
import 'package:flutterdemy/models/course_model.dart';
import 'package:flutterdemy/screens/course_details.dart';
import 'package:flutterdemy/widgets/flutterdemy_app.dart';

void main() {
  runApp(
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
    ),
  );
}
