import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/layout/pupop.dart';
import 'package:doandidong/pages/DetailSites.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/confirmPassword.dart';
import 'package:doandidong/pages/loading.dart';
import 'package:doandidong/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'backend/object/hotel_object.dart';
import 'backend/provider/hotel_provider.dart';
import 'pages/detailhotel.dart';
import 'pages/detailrestaurant.dart';
import 'layout/footterdetail.dart';
import 'package:doandidong/pages/changeinformation.dart';

void main() async {
  await dotenv.load();
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
