import 'dart:convert';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Widget _Avatar = Container(
    child: Row(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: EdgeInsets.only(left: 20, top: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: Image.asset(
              'images/Avatar.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Đổi ảnh đại diện',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff33CCFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
        ),
      ],
    ),
  );

  Widget _Edit = Container(
    padding: EdgeInsets.only(top: 50, left: 10),
    child: Column(
      children: [
        Text(
          'Thông tin cá nhân',
          style: TextStyle(fontSize: 20),
        ),
        Divider(
          height: 15,
          thickness: 1.5,
          indent: 80,
          endIndent: 80,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          height: 50,
          width: 280,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.zero),
              prefixIcon: Icon(Icons.person),
              hintText: 'Nguyễn Trung Quân',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          height: 50,
          width: 280,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.zero),
              prefixIcon: Icon(Icons.mail),
              hintText: '03061910**@caothang.edu.vn',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          height: 50,
          width: 280,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.zero),
              prefixIcon: Icon(Icons.phone),
              hintText: '0339311897',
            ),
          ),
        ),
        Container(
          width: 120,
          padding: EdgeInsets.only(top: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Xác nhận',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff33CCFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
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
            _Avatar,
            _Edit,
          ],
        ),
      ),
    );
  }
}
