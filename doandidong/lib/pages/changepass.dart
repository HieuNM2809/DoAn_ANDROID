import 'dart:convert';

import 'package:doandidong/backend/object/post_object.dart';
import 'package:doandidong/backend/object/user_object.dart';
import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:doandidong/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/layout/pupop.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Changepass extends StatefulWidget {
  const Changepass({Key? key}) : super(key: key);

  @override
  _ChangepassState createState() => _ChangepassState();
}

class _ChangepassState extends State<Changepass> {
  late final UserObject user;
  List<PostObject> lstPost = [];
  String nameUser = 'No Name';
  String imageUser = 'No Image';
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassOld = TextEditingController();
  TextEditingController txtPassNew = TextEditingController();
  TextEditingController txtPassNewConfirm = TextEditingController();
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

  Future<void> changePass() async {
    SharedPreferences pres = await SharedPreferences.getInstance();
    var password = pres.getString('password');
    // check info empty
    if (txtPassOld.text == '' ||
        txtPassNew.text == '' ||
        txtPassNewConfirm.text == '') {
      final snackBar = SnackBar(
        content: const Text('Vui lòng điền đầy đủ thông tin'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pop(context, 'Cancel');
    }
    else if (txtPassOld.text != password) {
      final snackBar = SnackBar(
        content: const Text('Mật khẩu cũ không đúng'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pop(context, 'Cancel');
    } else if (txtPassNew.text != txtPassNewConfirm.text) {
      final snackBar = SnackBar(
        content: const Text('Mật khẩu xác nhận không đúng'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pop(context, 'Cancel');
    } else {
      bool isSuccess = await UserProvider.changepasword( txtPassNew.text);
      if (isSuccess) {
        final snackBar = SnackBar(
          content: const Text('Cập nhật thành công'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AcSetting()));
      } else {
        final snackBar = SnackBar(
          content: const Text('Cập nhật thất bại'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.pop(context, 'Cancel');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
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
    Widget ChangePass = Container(
      padding: EdgeInsets.only(left: 40, top: 40),
      child: Row(
        children: [
          Icon(
            Icons.lock,
            size: 30,
            color: Colors.blue,
          ),
          SizedBox(width: 20),
          Text(
            'Thay đổi mật khẩu',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );

    Widget NewOld = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtPassOld,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.lock),
          hintText: 'Mật khẩu cũ',
        ),
      ),
    );
    Widget NewPass = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtPassNew,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.lock),
          hintText: 'Mật khẩu mới',
        ),
      ),
    );
    Widget ComfirmPass = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtPassNewConfirm,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.lock),
          hintText: 'Xác nhận mật khẩu',
        ),
      ),
    );

    Widget btnConfirm = Container(
      padding: EdgeInsets.fromLTRB(100, 10, 80, 0),
      child: ElevatedButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Thông báo'),
            content: const Text('Xác nhận cập nhật'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Huỷ'),
              ),
              TextButton(
                onPressed: () => changePass(),
                child: const Text('Đồng ý'),
              ),
            ],
          ),
        ),
        child: Text(
          'Xác nhận ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Color(0xff33ccff),
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
      ),
    );
    Widget btnCancel = Container(
      padding: EdgeInsets.fromLTRB(100, 10, 80, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AcSetting()));
        },
        child: Text(
          'Hủy',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: Color(0xff33ccff),
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
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
            ChangePass,
            Divider(
                color: Colors.black.withOpacity(0.8),
                indent: 20,
                endIndent: 20),
            NewOld,
            NewPass,
            ComfirmPass,
            btnConfirm,
            btnCancel,
          ],
        ),
      ),
    );
  }
}
