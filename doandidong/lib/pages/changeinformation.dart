import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/layout/pupop.dart';

class Changeinformation extends StatefulWidget {
  const Changeinformation({Key? key}) : super(key: key);

  @override
  _ChangeinformationState createState() => _ChangeinformationState();
}

class _ChangeinformationState extends State<Changeinformation> {
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
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
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

  @override
  Widget build(BuildContext context) {
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
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AcSetting())),
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
            Name,
            Email,
            Phone,
            btnConfirm,
            btnCancel,
          ],
        ),
      ),
    );
  }
}
