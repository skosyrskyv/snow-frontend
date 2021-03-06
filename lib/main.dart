import 'package:flutter/material.dart';
import 'package:snow_frontend/snow/presentation/snow_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SnowScreen(),
    );
  }
}
