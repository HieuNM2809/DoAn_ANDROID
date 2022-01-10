import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  @override
  _SpinKitScreenState createState() => _SpinKitScreenState();
}

class _SpinKitScreenState extends State<LoadingPage> {
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
                  )
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
