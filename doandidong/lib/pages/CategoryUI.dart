import 'package:flutter/material.dart';

class CategoryUI extends StatefulWidget {
  const CategoryUI({Key? key}) : super(key: key);

  @override
  State<CategoryUI> createState() => _CategoryUIState();
}

class _CategoryUIState extends State<CategoryUI> {
  Widget _Carosel = Container(
    padding: EdgeInsets.only(top: 7),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        'images/image_1.jpg',
        fit: BoxFit.fill,
        width: 380,
        height: 150,
      ),
    ),
  );

  Widget _RegionSites = Container(
    padding: EdgeInsets.only(top: 10, left: 7, right: 7),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Danh mục vùng',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: Text(
                'Xem thêm >',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffACACAC),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_2.jpg',
                      fit: BoxFit.fill,
                      width: 120,
                      height: 110,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 20.5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Miền Bắc',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_3.jpg',
                      fit: BoxFit.fill,
                      width: 120,
                      height: 110,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 20.5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Miền Trung',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_4.jpg',
                      fit: BoxFit.fill,
                      width: 120,
                      height: 110,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 70, left: 20.5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Miền Nam',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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

  Widget _Popular = Container(
    padding: EdgeInsets.only(top: 13, left: 7, right: 7),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Phổ biến',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_1.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
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
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Đi phượt',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_2.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Nghỉ dưỡng',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_3.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Cắm trại',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_4.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
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
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Dã ngoại',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_5.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Leo núi',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/image_6.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 200,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 190, left: 140),
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
                Container(
                  padding: EdgeInsets.only(top: 185, left: 12),
                  width: 180,
                  child: Text(
                    'Cặp đôi',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
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
            _Carosel,
            _RegionSites,
            _Popular,
          ],
        ),
      ),
    );
  }
}
