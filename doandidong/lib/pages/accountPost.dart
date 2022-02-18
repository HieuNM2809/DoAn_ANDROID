import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'changepass.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/login.dart';

class AccountPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AccountPostState();
  }
}

class AccountPostState extends State<AccountPost> {
  Future<void> logout() async {
      bool isSuccess = await UserProvider.logout();
      if(isSuccess){
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage()));
         
      }else{
         final snackBar = SnackBar(
          content: const Text('Đăng xuất thất bại'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
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
              child: Image.asset(
                'images/mienbac.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Nguyễn Minh Hiếu',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AcSetting()));
              },
              icon: Icon(Icons.settings),
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
    Widget Title = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        Text(
          'Các bài viết cá nhân',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ],
    );
    Widget Infomation = SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/bmt.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Tượng đài chiến thắng...'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/dalat.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Quảng trường Lâm V...'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/bmt.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Tượng đài chiến thắng...'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/dalat.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Quảng trường Lâm V...'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/bmt.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Tượng đài chiến thắng...'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 185,
                            height: 150,
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'images/dalat.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 100, left: 125),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Quảng trường Lâm V...'),
                      ),
                    ],
                  ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Avatar,
            Title,
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
