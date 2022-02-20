import 'dart:convert';
import 'package:doandidong/backend/object/post_object.dart';
import 'package:doandidong/backend/object/user_object.dart';
import 'package:doandidong/backend/provider/post_provider.dart';
import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/login.dart';

class PostShare extends StatefulWidget {
  const PostShare({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return PostShareState();
  }
}

class PostShareState extends State<PostShare> {
  List<PostObject> lstPost = [];

  void _loadPost() async {
    final data = await UserProvider.getAllPost();
    setState(() {});
    lstPost = data;
  }

  @override
  void initState() {
    super.initState();
    _loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF0F2F5),
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
      body: FutureBuilder(
        future: UserProvider.getAllPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Có lỗi xảy ra!!!'),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: lstPost.length,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ChiTietLuuTru(lstLuuTru[index]),
                  //     ),
                  //   );
                  // },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        elevation: 1.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(16),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          dotenv.env['API_URL_CUS']! +
                              '/upload/post/' +
                              lstPost[index].image,
                          /*a.image*/
                          width: double.maxFinite,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 106,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 27,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          height: 90,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(16),
                                  bottomStart: Radius.circular(16)),
                              color: Color(0XFFFFFFFF),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0X0D5E9EFF),
                                    Color(0XB30066FF)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  tileMode: TileMode.clamp)),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                lstPost[index].contents,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 5.0,
                                      color: Color(0XFF0066FF),
                                      offset: Offset(1.5, 0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0XFF0066FF),
                                          offset: Offset(1.5, 0.5),
                                          blurRadius: 5.0,
                                        ),
                                      ]),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    '20-02-2022',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0,
                                          color: Color(0XFF0066FF),
                                          offset: Offset(1.5, 0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Center(
            // Thanh load
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
