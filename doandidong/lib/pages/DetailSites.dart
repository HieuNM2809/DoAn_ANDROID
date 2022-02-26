import 'package:doandidong/pages/ListSites.dart';
import 'package:doandidong/pages/Search.dart';
import 'package:doandidong/pages/ortherhotel.dart';
import 'package:doandidong/pages/ortherrestaurant.dart';
import 'package:doandidong/pages/otherKS.dart';
import 'package:doandidong/pages/otherR.dart';
import 'package:flutter/material.dart';

class DetailSites extends StatefulWidget {
  const DetailSites({Key? key}) : super(key: key);

  @override
  DetailSitesState createState() => DetailSitesState();
}

class DetailSitesState extends State<DetailSites> {
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
              'images/Vung_Tau.jpg',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListSites()));
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Search());
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
    Widget TextDD = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Biển Vung Tàu',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    Widget Mota = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Mô tả',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    Widget DC = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Ðịa chỉ',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    Widget Map = Container(
      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Image.asset('images/Vung_Tau_Location.png'),
      ),
    );
    Widget Button = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OrtherKS()));
            },
            child: Text(
              'Các khách sạn gần đây',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Color(0xff33ccff),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, top: 10, right: 20, bottom: 10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OrtherR()));
            },
            child: Text(
              'Các quán ăn gần đây',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Color(0xff33ccff),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            images,
            TextDD,
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
            DC,
            Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 10),
              child: Text(
                'Vũng Tàu',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Map,
            Button,
          ],
        ),
      ),
    );
  }
}
