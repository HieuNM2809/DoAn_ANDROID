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
          'images/image_1.jpg',
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
        padding: EdgeInsets.only(top: 300, left: 7),
        child: Text(
          'Vịnh hạ long tươi đẹp',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
