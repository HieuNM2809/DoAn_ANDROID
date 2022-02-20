import 'package:doandidong/pages/RestaurantCategory.dart';
import 'package:doandidong/pages/ortherrestaurant.dart';
import 'package:flutter/material.dart';

class Detailrestaurant extends StatefulWidget {
  const Detailrestaurant({Key? key}) : super(key: key);

  @override
  _DetailrestaurantState createState() => _DetailrestaurantState();
}

class _DetailrestaurantState extends State<Detailrestaurant> {
  @override
  Widget build(BuildContext context) {
    Widget images = Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Image.asset(
              'images/Nhahang.jpg',
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RestaurantCategory()));
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Widget Mota = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Mô tả chi tiết',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    Widget Map = Container(
      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Image.asset('images/VTNH.png'),
      ),
    );

    Widget NHK = Container(
      padding: EdgeInsets.fromLTRB(100, 10, 80, 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrtherRestautant()));
        },
        child: Text(
          'Các quán ăn khác',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Color(0xff33ccff),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
      ),
    );
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            images,
            Mota,
            Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 10),
              child: Text(
                'abc Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Map,
            NHK,
          ],
        ),
      ),
    );
  }
}
