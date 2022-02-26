import 'package:doandidong/backend/object/sites_object.dart';
import 'package:doandidong/backend/provider/sites_provider.dart';
import 'package:doandidong/pages/DetailSites.dart';
import 'package:doandidong/pages/ListSites.dart';
import 'package:doandidong/pages/RestaurantCategory.dart';
import 'package:doandidong/pages/listshotel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<SitesObject> Site = [];
  void lshotel() async {
    final data = await SiteProvider.getAllSite();
    setState(() {});
    Site = data;
  }

  @override
  void initState() {
    super.initState();
    lshotel();
  }

  @override
  Widget build(BuildContext context) {
    Widget DanhMuc = Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Danh mục vùng',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/mienbac.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền bắc',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/mientrung.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền trung',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    padding: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'images/miennam.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListSites()));
                      },
                      child: Text(
                        'Miền nam',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    Widget NewSites = Container(
      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        'Bài viết địa danh',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff33ccff),
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
      body: Column(
        children: [
          DanhMuc,
          NewSites,
          Expanded(
            child: ListView.builder(
              itemCount: Site.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailSites()));
                    },
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
                              child: Image.network(
                                dotenv.env['API_URL_CUS']! +
                                    "/upload/sites/${Site[index].image}",
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
                                      Site[index].name,
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
                                  // Site[index].description,
                                  'Quá tuyệt vời',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              // Container(
                              //   child: Row(
                              //     children: [
                              //       Icon(
                              //         Icons.location_on,
                              //         color: Colors.red,
                              //       ),
                              //       Text(
                              //         Site[index].description,
                              //         softWrap: true,
                              //         style: TextStyle(
                              //             color: Colors.black,
                              //             fontSize: 18,
                              //             fontWeight: FontWeight.bold),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            ),
                                          ),
                                          Text('251'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                          ),
                                          Text('34')
                                        ],
                                      ),
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
    );
  }
}
