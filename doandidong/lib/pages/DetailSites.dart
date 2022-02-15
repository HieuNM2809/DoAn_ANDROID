import 'package:flutter/material.dart';

class DetailSites extends StatefulWidget {
  const DetailSites({Key? key}) : super(key: key);

  @override
  State<DetailSites> createState() => _DetailSitesState();
}

class _DetailSitesState extends State<DetailSites> {
  Widget _Image = Stack(
    fit: StackFit.passthrough,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff33CCFF),
            width: 3.5,
          ),
        ),
        child: Image.asset(
          'images/Vung_Tau.jpg',
          fit: BoxFit.fill,
          height: 250,
          width: 200,
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 260, left: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '100 Chia sẻ',
              style: TextStyle(fontSize: 13, color: Colors.blueGrey),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Trở về Vùng',
                style: TextStyle(fontSize: 14, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 290, left: 7),
        child: Text(
          'Vũng Tàu',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 320, left: 7),
        child: Text(
          'Một địa danh biển tuyệt đẹp nằm ở Tỉnh BR-VT.',
          style: TextStyle(),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 345, left: 7),
        child: Text(
          'Bản đồ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 370, left: 7),
        child: Image.asset(
          'images/Vung_Tau_Location.png',
          fit: BoxFit.fill,
          width: 400,
          height: 200,
        ),
      ),
    ],
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
          ],
        ),
      ),
    );
  }
}
