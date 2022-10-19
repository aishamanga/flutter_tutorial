import 'package:flutter/material.dart';
import 'Page1.dart';

void main() => runApp(const MyApp());

/// main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Tutorial';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Page1(),
    );
  }
}
