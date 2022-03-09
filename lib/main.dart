import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Vazir',
      ),
      home: Scaffold(
        body: SafeArea(
          child: Text(
            'علی کاظمی',
          ),
        ),
      ),
    );
  }
}
