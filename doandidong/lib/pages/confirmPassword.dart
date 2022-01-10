import 'package:doandidong/layout/footter.dart';
import 'package:flutter/material.dart';

class ConfirmPassword extends StatefulWidget {
  ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ConfirmPasswordPageState();
  }
}

class ConfirmPasswordPageState extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    Widget images = Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Image.asset(
        'images/lg.png',
        width: 2,
        height: 250,
        fit: BoxFit.fill,
      ),
    );
    Widget Login = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Xác nhận mật khẩu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Tên tài khoản',
                    ),
                  ),
                ),
                Container(
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
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Gửi xác nhận',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Color(0xff33ccff),
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff33CCFF),
      body: Center(
        child: ListView(
          children: [
            images,
            Login,
          ],
        ),
      ),
    );
  }
}
