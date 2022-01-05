// import 'package:flutter/material.dart';

// class Header extends StatefulWidget {
//   const Header({Key? key}) : super(key: key);

//   @override
//   _HeaderState createState() => _HeaderState();
// }

// class _HeaderState extends State<Header> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ListTile(
//           tileColor: Color(0xff33ccff),
//           trailing: IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.notifications, color: Colors.white)),
//           leading: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.menu_open,
//                 color: Colors.white,
//               )),
//           title: Column(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Du',
//                       style: TextStyle(
//                           color: Colors.orange, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       ' lịch',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.bold),
//                     ),
//                     Image.asset('images/logomoi.png'),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.zero,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(40)),
//                     ),
//                     prefixIcon: Icon(Icons.search),
//                     hintText: 'Bạn đang tìm gì?',
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
