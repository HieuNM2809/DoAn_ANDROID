import 'package:flutter/material.dart';

class Hoteldetail extends StatefulWidget {
  const Hoteldetail({Key? key}) : super(key: key);

  @override
  _HoteldetailState createState() => _HoteldetailState();
}

class _HoteldetailState extends State<Hoteldetail> {
  @override
  Widget build(BuildContext context) {
    Widget images = Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Image.asset(
          'images/khachsan.png',
        ),
      ),
    );
    Widget TextKS = Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        'Khách sạn Hoàng Khương',
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
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Text(
            'Dành cho những du khách muốn du lịch thoải mái cùng ngân sách tiết kiệm, Khách Sạn Hoàng Khương sẽ là lựa chọn lưu trú hoàn hảo, nơi cung cấp các tiện nghi chất lượng và dịch vụ tuyệt vời',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Image.asset('images/VTKS.PNG'),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Text(
                  'Các khách sạn tương tự',
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
                            'images/khachsan.png',
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
                          'Khách sạn Hoàng Khương 2',
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
                            'images/khachsan.png',
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
                          'Khách sạn Hoàng Khương 3',
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
                            'images/khachsan.png',
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
                          'Khách sạn Hoàng Khương 4',
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
