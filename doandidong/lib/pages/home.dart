import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Widget DanhMuc = Center(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset('images/thac.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Danh mục vùng',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                    onPressed: () {},
                    child: Text(
                      'Miền bắc',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    onPressed: () {},
                    child: Text(
                      'Miền trung',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    onPressed: () {},
                    child: Text(
                      'Miền nam',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
  Widget PhoBien = Center(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Phổ biến',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/bmt.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Tượng đài chiến thắng...'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/dalat.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Quảng trường Lâm V...'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/dubai.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Khu du lịch sinh...'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/thac.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Thác Dray Sap...'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/doithong.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite, color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Đồi thông Buôn Tring...'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 185,
                          height: 150,
                          padding: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              'images/baotang.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 100, left: 125),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Bảo tàng cafe Buôn...'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    var ImageList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff33ccff),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_open)),
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
      body: Center(
        child: ListView(
          children: [
            // slider(),
            DanhMuc,
            PhoBien,
          ],
        ),
      ),
    );
  }
}
