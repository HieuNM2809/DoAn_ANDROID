import 'package:flutter/material.dart';

class CategoryUI extends StatefulWidget {
  const CategoryUI({Key? key}) : super(key: key);

  @override
  State<CategoryUI> createState() => _CategoryUIState();
}

class _CategoryUIState extends State<CategoryUI> {
  Widget DanhSach = Center(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Nhu cầu',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/diphuot.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Đi phượt',
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
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/nghiduong.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Nghỉ dưỡng',
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
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/camtrai.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Cắm trại',
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
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/dangoai.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Dã ngoại',
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
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/giadinh.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Gia đình',
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
                  padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/capdoi.png',
                      fit: BoxFit.fill,
                      width: 500,
                      height: 140,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 105, left: 20),
                  width: 180,
                  child: Text(
                    'Cặp đôi',
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
  );
  @override
  Widget build(BuildContext context) {
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
                  Image.asset('images/logo_appbar.jpg'),
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
            DanhSach,
          ],
        ),
      ),
    );
  }
}
