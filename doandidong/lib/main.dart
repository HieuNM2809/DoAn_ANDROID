import 'package:doandidong/footter.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/login.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đồ án',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
