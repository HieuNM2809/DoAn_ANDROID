import 'package:doandidong/pages/ListSites.dart';
import 'package:doandidong/pages/RestaurantCategory.dart';
import 'package:doandidong/pages/listshotel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int currentPos = 0;
  List<String> ListPaths = [
    "images/bmt.png",
    "images/ganhdadia.png",
    "images/thac.png",
    "images/Sapa.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var ImageList;
    Widget DanhMuc = Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Danh mục vùng',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/mienbac.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền bắc',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/mientrung.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền trung',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/miennam.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền nam',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff33ccff),
        title: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Du',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' lịch',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('images/logomoi.png'),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ),
        ],
      ),
      body: Column(
        children: [
          // slider(),
          DanhMuc,
          Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Danh sách',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListSites()));
                              },
                              child: Image.asset(
                                'images/ganhdadia.png',
                                fit: BoxFit.fill,
                                width: 500,
                                height: 140,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 105, left: 20),
                          width: 180,
                          child: Text(
                            'Địa danh',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListHotel()));
                              },
                              child: Image.asset(
                                'images/khachsan.png',
                                fit: BoxFit.fill,
                                width: 500,
                                height: 140,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 105, left: 20),
                          width: 180,
                          child: Text(
                            'Khách sạn',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RestaurantCategory()));
                              },
                              child: Image.asset(
                                'images/quanan.png',
                                fit: BoxFit.fill,
                                width: 500,
                                height: 140,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 105, left: 20),
                          width: 180,
                          child: Text(
                            'Quán ăn',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
