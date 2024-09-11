import 'package:flutter/material.dart';

import 'core/configs/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: Container(),
    );
  }
}
