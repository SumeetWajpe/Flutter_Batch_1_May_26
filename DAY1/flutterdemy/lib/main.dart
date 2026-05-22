import 'package:flutter/material.dart';
import 'package:flutterdemy/models/courselist_changenotifier_model.dart';
import 'package:flutterdemy/widgets/flutterdemy_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CourseListNotifier(),
      child: MaterialApp(title: 'Flutter Demo', home: const FlutterdemyApp()),
    ),
  );
}


// 