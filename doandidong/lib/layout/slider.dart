// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:doandidong/home.dart';
// import 'package:carousel_slider/carousel_options.dart';

// class slider extends StatelessWidget {
//   final List<String> ImageList = [
//     'images/mienbac.png',
//     'images/mientrung.png',
//     'images/miennam.png'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var newMethod;
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               enlargeCenterPage: true,
//               enableInfiniteScroll: false,
//               autoPlay: true,
//             ),
//             items: newMethod
//                 .map((e) => ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: <Widget>[
//                           Image.network(
//                             e,
//                             width: 1000,
//                             height: 200,
//                             fit: BoxFit.cover,
//                           )
//                         ],
//                       ),
//                     ))
//                 .toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
