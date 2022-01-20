// import 'package:flutter/material.dart';

// class Footterdetail extends StatefulWidget {
//   const Footterdetail({Key? key}) : super(key: key);

//   @override
//   _FootterdetailState createState() => _FootterdetailState();
// }

// class _FootterdetailState extends State<Footterdetail> {
//   int SelectedIndex = 0;
//   List<Widget> _widgetOption = <Widget>[
//     Text('data'),
//     Text('data'),
//     Text('data'),
//   ];
//   void onItemTapped(int index) {
//     setState(() {
//       SelectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOption.elementAt(SelectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_back, color: Colors.grey),
//               title: Text('Trở về'),
//               backgroundColor: Colors.white),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.call, color: Colors.grey),
//               title: Text('Đặt ngay'),
//               backgroundColor: Colors.white),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite, color: Colors.grey),
//               title: Text('Yêu thích'),
//               backgroundColor: Colors.white),
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: SelectedIndex,
//         selectedItemColor: Colors.black,
//         iconSize: 40,
//         onTap: onItemTapped,
//         elevation: 5,
//       ),
//     );
//   }
// }
