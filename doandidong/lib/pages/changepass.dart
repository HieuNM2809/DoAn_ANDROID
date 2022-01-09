import 'package:doandidong/layout/footter.dart';
import 'package:flutter/material.dart';

class Changepass extends StatefulWidget {
  const Changepass({Key? key}) : super(key: key);

  @override
  _ChangepassState createState() => _ChangepassState();
}

class _ChangepassState extends State<Changepass> {
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

  Widget NewPass = Container(
    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
    child: TextFormField(
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

  @override
  Widget build(BuildContext context) {
    Widget btnConfirm = Container(
      padding: EdgeInsets.fromLTRB(100, 10, 80, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FootterPage()));
        },
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
              context, MaterialPageRoute(builder: (context) => FootterPage()));
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
              indent: 90,
            ),
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
