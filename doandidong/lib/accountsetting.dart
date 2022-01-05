import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:doandidong/footter.dart';
import 'changepass.dart';

class AcSetting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AcSettingState();
  }
}

class AcSettingState extends State<AcSetting> {
  Widget Avatar = Container(
    child: Row(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: EdgeInsets.only(left: 20, top: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: Image.asset(
              'images/mienbac.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Họ và tên',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),
          ),
        ),
      ],
    ),
  );
  Widget Setting = Container(
    padding: EdgeInsets.only(left: 40, top: 40),
    child: Row(
      children: [
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(width: 20),
        Text(
          'Cài đặt',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Widget Infomation = Container(
      padding: EdgeInsets.only(left: 40, top: 40),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person, size: 30, color: Colors.blue),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Thông tin cá nhân',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.folder, size: 30, color: Colors.blue),
              SizedBox(width: 20),
              Text(
                'Tự động sao lưu',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 10, 30, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Bật',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color(0xff33ccff),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.lock, size: 30, color: Colors.blue),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Changepass()));
                },
                child: Text('Mật khẩu',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black)),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.vpn_key, size: 30, color: Colors.blue),
              SizedBox(width: 20),
              Text(
                'Bảo mật',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(125, 10, 30, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cao',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color(0xff33ccff),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.exit_to_app, color: Colors.blue, size: 30),
                ),
              ),
              Text(
                'Thoát',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
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
            Avatar,
            Setting,
            Divider(
              color: Colors.black.withOpacity(0.8),
              indent: 90,
            ),
            Infomation,
          ],
        ),
      ),
    );
  }
}
