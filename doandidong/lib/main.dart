import 'package:doandidong/layout/pupop.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/confirmPassword.dart';
import 'package:doandidong/pages/loading.dart';
import 'package:flutter/material.dart';

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
      home: LoadingPage(),
    );
  }
}
