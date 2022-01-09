import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget _Image = Container(
    child: Image.asset(
      'images/logo.png',
      fit: BoxFit.fill,
      height: 250,
      width: 200,
    ),
  );
  Widget _RegisterForm = Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          width: 320,
          height: 400,
          decoration: BoxDecoration(
            color: Color(0xffAFAEAE),
            borderRadius: BorderRadius.all(
              Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Đăng ký',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Tên tài khoản',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Mật khẩu',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Nhập lại mật khẩu',
                  ),
                ),
              ),
              Container(
                width: 120,
                padding: EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 16, color: Colors.black),
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
            _Image,
            _RegisterForm,
          ],
        ),
      ),
    );
  }
}
