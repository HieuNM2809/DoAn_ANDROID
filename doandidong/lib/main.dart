import 'package:doandidong/footter.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/login.dart';
import 'home.dart';
import 'package:doandidong/EditProfile.dart';
import 'package:doandidong/ListSites.dart';
import 'Register.dart';
import 'CategoryUI.dart';
import 'DetailSites.dart';

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
