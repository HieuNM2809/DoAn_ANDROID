import 'package:doandidong/backend/object/hotel_object.dart';
import 'package:doandidong/backend/provider/hotel_provider.dart';
import 'package:flutter/material.dart';

class ListHotel extends StatefulWidget {
  const ListHotel({Key? key}) : super(key: key);

  @override
  State<ListHotel> createState() => ListHotelState();
}

class ListHotelState extends State<ListHotel> {
  List<HotelObject> Hotel = [];
  void lshotel() async {
    final data = await HotelProvider.getAllHotel();
    setState(() {});
    Hotel = data;
  }

  @override
  void initState() {
    super.initState();
    lshotel();
  }

  Widget AllSite = Container(
    padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                '12 khách sạn',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
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
        child: Column(
          children: [
            AllSite,
            Expanded(
              child: ListView.builder(
                itemCount: Hotel.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(5),
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Load hình ảnh
                            Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              width: 100,
                              height: 90,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  'images/khachsan.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 4,
                              height: 4,
                            ),
                            // Tên nơi lưu trú
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        Hotel[index].name,
                                        softWrap: true,
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.border_color_outlined,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                  height: 4,
                                ),
                                Container(
                                  child: Text(
                                    'Khách sạn này giá ok, xanh sạch đẹp',
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        Hotel[index].address,
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
