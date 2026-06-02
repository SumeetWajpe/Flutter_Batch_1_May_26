import 'package:bloc_app_flutterdemy/bloc/course.bloc.dart';
import 'package:bloc_app_flutterdemy/model/course.model.dart';
import 'package:bloc_app_flutterdemy/widgets/course.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CourseModel course;

  setUp(() {
    course = CourseModel(
      1,
      'Flutter',
      'Cross Platform',
      200,
      '',
      '',
      5,
      DateTime.now(),
      'English',
      ['English'],
    );
  });

  Widget createWidget() {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CourseBloc(),
        child: Scaffold(body: CourseWidget(course: course)),
      ),
    );
  }

  testWidgets('renders course information', (tester) async {
    await tester.pumpWidget(createWidget());
    expect(find.text('Flutter'), findsOneWidget);
  });

  testWidgets('shows likes button (icon)', (tester) async {
    await tester.pumpWidget(createWidget());
    expect(find.byIcon(Icons.thumb_up), findsOneWidget);
  });

  testWidgets('tap likes button', (tester) async {
    await tester.pumpWidget(createWidget());

    await tester.tap(find.byIcon(Icons.thumb_up));
    await tester.pump();

    expect(find.byType(CourseWidget), findsOneWidget);
  });
}
