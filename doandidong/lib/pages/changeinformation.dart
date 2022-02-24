import 'dart:convert';

import 'package:doandidong/backend/object/post_object.dart';
import 'package:doandidong/backend/object/user_object.dart';
import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:doandidong/function/function.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:doandidong/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/layout/pupop.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Changeinformation extends StatefulWidget {
  const Changeinformation({Key? key}) : super(key: key);

  @override
  _ChangeinformationState createState() => _ChangeinformationState();
}

class _ChangeinformationState extends State<Changeinformation> {
  late final UserObject user;
  String nameUser = 'No Name';
  String imageUser = 'No Image';
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
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
    txtName.text = user.name;
    txtEmail.text = user.email;
    txtPhone.text = user.phone;
  }
   Future<void> updateInfo() async {
  // check info empty
    if (txtEmail.text == '' || txtName.text == '' || txtPhone.text == '') {
      final snackBar = SnackBar(
        content: const Text('Vui lòng điền đầy đủ thông tin'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    // check email
    else if (isEmail(txtEmail.text) == false) {
      final snackBar = SnackBar(
        content: const Text('Vui lòng nhập đúng định dạng email'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      bool isSuccess = await UserProvider.updateInfoUser(txtName.text, txtEmail.text, txtPhone.text);
      if(isSuccess){
         final snackBar = SnackBar(
          content: const Text('Cập nhật thành công'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AcSetting()));
         
      }else{
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
          // Container(
          //   width: 150,
          //   height: 150,
          //   padding: EdgeInsets.only(left: 20, top: 20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.all(Radius.circular(100)),
          //     child: Image.network(
          //           dotenv.env['API_URL_CUS']! +'/upload/users/' + imageUser,
          //           width: 271,
          //           height: 132,
          //           fit: BoxFit.cover,
          //         ),
          //   ),
          // ),
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
          SizedBox(width: 20),
          Text(
            'Thông tin cá nhân',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );

    Widget Name = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtName,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.person),
          hintText: 'Họ và tên',
        ),
      ),
    );
    Widget Email = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtEmail,
        readOnly: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.email),
          hintText: 'Email',
        ),
      ),
    );
    Widget Phone = Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
      child: TextFormField(
        controller: txtPhone,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          prefixIcon: Icon(Icons.phone),
          hintText: 'Số điện thoại',
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
                onPressed: () => updateInfo(),
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
            Email,
            Name,
            Phone,
            btnConfirm,
            btnCancel,
          ],
        ),
      ),
    );
  }
}
