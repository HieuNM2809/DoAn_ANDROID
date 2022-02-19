import 'dart:convert';
import 'dart:ui';
import 'package:doandidong/backend/object/post_object.dart';
import 'package:doandidong/backend/object/user_object.dart';
import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'changepass.dart';
import 'package:doandidong/pages/changeinformation.dart';

class AcSetting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AcSettingState();
  }
}

class AcSettingState extends State<AcSetting> {
  late final UserObject user;
  List<PostObject> lstPost = [];
  String nameUser = 'No Name';
  String imageUser = 'No Image';
  TextEditingController txtEmail = TextEditingController();
  Future<void> logout() async {
    bool isSuccess = await UserProvider.logout();
    if (isSuccess) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      final snackBar = SnackBar(
        content: const Text('Đăng xuất thất bại'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _loadData() async {
    await UserProvider.getUser();
    SharedPreferences pres = await SharedPreferences.getInstance();
    String us = pres.getString("user") ?? '';
    user = UserObject.fromJson(jsonDecode(us));
    setState(() {});
    nameUser = user.name;
    imageUser = user.image;

    //load post
    // final data = await UserProvider.getAllPost();
    // setState(() {});
    // lstPost = data;
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    var dotenv;
    Widget Avatar = Container(
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.network(
                'http://dulich.local/upload/users/' + imageUser,
                width: 271,
                height: 132,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              nameUser,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: IconButton(
              onPressed: () => logout(),
              icon: Icon(Icons.login),
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

    Widget Infomation = Container(
      padding: EdgeInsets.only(left: 40, top: 40),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Row(
              children: [
                Icon(Icons.person, size: 30, color: Colors.blue),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Changeinformation()));
                  },
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Icon(Icons.exit_to_app, size: 30, color: Colors.blue),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FootterPage()));
                  },
                  child: Text('Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
              ],
            ),
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
                indent: 20,
                endIndent: 20),
            Infomation,
          ],
        ),
      ),
    );
  }
}
