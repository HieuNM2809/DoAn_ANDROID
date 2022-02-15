import 'package:doandidong/backend/object/restaurant_object.dart';
import 'package:doandidong/backend/provider/restaurant_provider.dart';
import 'package:flutter/material.dart';

class RestaurantCategory extends StatefulWidget {
  const RestaurantCategory({Key? key}) : super(key: key);

  @override
  State<RestaurantCategory> createState() => RestaurantCategoryState();
}

class RestaurantCategoryState extends State<RestaurantCategory> {
  List<RestaurantObject> _Restaurant = [];
  void lsRes() async {
    final data_Res = await RestaurantProvider.getAllRestaurant();
    setState(() {});
    _Restaurant = data_Res;
  }

  @override
  void initState() {
    super.initState();
    lsRes();
  }

  Widget _ChoseRes = Container(
    padding: EdgeInsets.only(top: 20, left: 7),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                '10 Nhà hàng',
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
            _ChoseRes,
            Expanded(
              child: ListView.builder(
                itemCount: _Restaurant.length,
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
                            Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              width: 100,
                              height: 90,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  'images/La_Sirena.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                              height: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        _Restaurant[index].name_Res,
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
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Nhà hàng này rất tuyệt vời',
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        _Restaurant[index].address,
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
