// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build of MyApp');
    return MaterialApp(
      home: HomePage(),
    );
  }
}
