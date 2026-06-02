import 'package:bloc_app_flutterdemy/bloc/course.bloc.dart';
import 'package:bloc_app_flutterdemy/model/course.model.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CourseBloc Tests suite', () {
    late CourseBloc bloc;

    setUp(() {
      bloc = CourseBloc();
    });
    tearDown(() {
      bloc.close();
    });

    test('initial State contains 4 courses', () {
      expect(bloc.state.courses.length, 4); // assert
    });

    // blocTest -> build , act , verify

    blocTest<CourseBloc, CourseState>(
      'AddCourse Event adds a new course',
      build: () => CourseBloc(),
      act: (bloc) {
        bloc.add(
          AddCourseEvent(
            CourseModel(
              5,
              "Vue3",
              "A progressive Framework",
              200,
              "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
              "Vue3 is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter is an open-source UI software development kit (SDK) created by Google that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase. ",
              5,
              DateTime.now().subtract(const Duration(days: 10)),
              "English",
              ["English", "German", "Spanish"],
            ),
          ),
        );
      },
      verify: (bloc) {
        expect(bloc.state.courses.length, 5);
        expect(bloc.state.courses.last.name, 'Vue3');
      },
    );
  });
}
