import 'package:flutter/material.dart';

class Detailrestaurant extends StatefulWidget {
  const Detailrestaurant({Key? key}) : super(key: key);

  @override
  _DetailrestaurantState createState() => _DetailrestaurantState();
}

class _DetailrestaurantState extends State<Detailrestaurant> {
  @override
  Widget build(BuildContext context) {
    Widget images = Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Image.asset(
          'images/Nhahang.jpg',
        ),
      ),
    );
    Widget TextKS = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Bún đậu mắm tôm ',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
    Widget Mota = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'Mô tả chi tiết',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            'Bạn muốn ăn bún đậu với một phong cách phục vụ chuyên nghiệp, dịch vụ ân cần, đồ uống đa dạng...',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Image.asset('images/VTNH.png'),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Text(
                  'Các món ăn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            'images/Nhahang.jpg',
                            width: 120,
                            height: 80,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Bún đậu mắm tôm 2',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            'images/Nhahang.jpg',
                            width: 120,
                            height: 80,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 80,
                        padding: EdgeInsets.zero,
                        child: Text(
                          'Bún đậu mắm tôm 3',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            'images/Nhahang.jpg',
                            width: 120,
                            height: 80,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Bún đậu mắm tôm 4',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    Container(
                      padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Đặt ngay ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Color(0xff33ccff),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            images,
            TextKS,
            Mota,
          ],
        ),
      ),
    );
  }
}
