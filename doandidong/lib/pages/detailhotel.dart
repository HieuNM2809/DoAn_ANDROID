import 'package:doandidong/backend/object/hotel_object.dart';
import 'package:doandidong/backend/provider/hotel_provider.dart';
import 'package:doandidong/pages/listshotel.dart';
import 'package:doandidong/pages/ortherhotel.dart';
import 'package:flutter/material.dart';

class Hoteldetail extends StatefulWidget {
  const Hoteldetail({Key? key}) : super(key: key);

  @override
  _HoteldetailState createState() => _HoteldetailState();
}

class _HoteldetailState extends State<Hoteldetail> {
  // List<HotelObject> DHotel = [];
  // void dthotel() async {
  //   final data = await HotelProvider.getAllHotel();
  //   setState(() {});
  //   DHotel = data;
  // }

  // @override
  // void initStates() {
  //   super.initState();
  //   dthotel();
  // }

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
              'images/khachsan.png',
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListHotel()));
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Widget TextKS = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Khách sạn Hoàng Khương',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
        child: Image.asset('images/VTKS.PNG'),
      ),
    );

    Widget KSS = Container(
      padding: EdgeInsets.fromLTRB(100, 10, 80, 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Ortherhotels()));
        },
        child: Text(
          'Các khách sạn khác',
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
            TextKS,
            Divider(
                color: Colors.black.withOpacity(0.8),
                indent: 20,
                endIndent: 20),
            Mota,
            Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 10),
              child: Text(
                'abc Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Map,
            KSS,
          ],
        ),
      ),
    );
  }
}
