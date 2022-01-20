import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/home.dart';
import 'package:doandidong/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _SpinKitScreenState createState() => _SpinKitScreenState();
}

class _SpinKitScreenState extends State<LoadingPage> {
  void load() async {
    setState(() {});
    Timer(Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FootterPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/lg.png',
                          fit: BoxFit.fill,
                        ),
                        SpinKitCubeGrid(color: Colors.blueAccent),
                        SizedBox(height: 10),
                        Text(
                          "Loading",
                          style: TextStyle(
                              color: Colors.blue[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:doandidong/layout/footter.dart';
// import 'package:flutter/material.dart';

// class LoadingPage extends StatefulWidget {
//   LoadingPage({Key? key}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     return LoadingPageState();
//   }
// }

// class LoadingPageState extends State<LoadingPage> {
//   @override
//   Widget build(BuildContext context) {
//     Widget images = Column(
//       children: [
//         Image.asset(
//           'images/lg.png',
//           fit: BoxFit.fill,
//         ),
//       ],
//     );
//     return Scaffold(
//       backgroundColor: Color(0xff33CCFF),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'images/lg.png',
//               fit: BoxFit.fill,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
