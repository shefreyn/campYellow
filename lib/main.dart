import 'package:camp_yellow/EntryPoint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camp Yellow',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Main(),
    );
  }
}
