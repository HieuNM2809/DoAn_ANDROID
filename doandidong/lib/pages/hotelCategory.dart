import 'package:doandidong/backend/object/hotel_object.dart';
import 'package:doandidong/backend/provider/hotel_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HotelCategory extends StatefulWidget {
  const HotelCategory({Key? key}) : super(key: key);

  @override
  State<HotelCategory> createState() => _HotelCategoryState();
}

class _HotelCategoryState extends State<HotelCategory> {
  Widget _Popup = Container(
    child: PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text("First"),
          value: 1,
        ),
        PopupMenuItem(
          child: Text("Second"),
          value: 2,
        ),
      ],
    ),
  );
  Widget _ChoseRegion = Container(
    padding: EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 7),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Tất cả',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff33CCFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Miền Bắc',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xff33CCFF),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Miền Trung',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff33CCFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 7),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Miền Nam',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xff33CCFF),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  Widget _AllSites = Container(
    padding: EdgeInsets.only(top: 20, left: 7),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                '142 khách sạn',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 7),
              child: Row(
                children: [
                  Text(
                    'Sắp xếp:',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(children: [
                      Text(
                        'Hot',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
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
        title: Column(
          children: [
            Stack(
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
                //       _ChoseRegion,
                //       _AllSites,
              ],
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
      body: FutureBuilder<List<HotelObject>>(
          future: HotelProvider.getAllHotel(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Có lỗi xảy ra!!"),
              );
            } else if (snapshot.hasData) {
              return CartHotel(lstHotel: snapshot.data!);
            }
            return Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: SpinKitCubeGrid(color: Colors.blueAccent),
              ),
            );
          }),
      //  Center(
      //   child: ListView(
      //     children: [
      //       // slider(),
      //       _ChoseRegion,
      //       _AllSites,
      //       FutureBuilder<List<HotelObject>>(
      //       future: HotelProvider.getAllHotel(),
      //       builder: (context, snapshot) {
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text("Có lỗi xảy ra!!"),
      //           );
      //         } else if (snapshot.hasData) {
      //           return CartHotel(lstHotel: snapshot.data!);
      //         }
      //         return Center(
      //           child:  Padding(padding: EdgeInsets.only(top: 200.0), child:  SpinKitCubeGrid(color: Colors.blueAccent),),
      //         );
      //       },
      //     ),
      //     ],
      //   ),
      // ),
    );
  }
}

class CartHotel extends StatelessWidget {
  final List<HotelObject> lstHotel;
  const CartHotel({Key? key, required this.lstHotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lstHotel.length,
      itemBuilder: (context, index) => Card(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'http://dulich.local:81/upload/users/2022_01_07_02_29_50_Untitled-2.png',
                        width: 300,
                        height: 200,
                        fit: BoxFit.fill),
                    // Image.asset(
                    //   'images/image_1.jpg',
                    //   fit: BoxFit.fill,
                    //   width: 300,
                    //   height: 200,
                    // ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tên: ' + lstHotel[index].name,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Địa chỉ: ' + lstHotel[index].address,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 180, left: 250),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
