import 'package:flutter/material.dart';

class ListSites extends StatefulWidget {
  const ListSites({Key? key}) : super(key: key);

  @override
  State<ListSites> createState() => _ListSitesState();
}

class _ListSitesState extends State<ListSites> {
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
        Container(
          child: TextButton(
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
                '10 Địa danh',
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
  Widget _Sites = Container(
    padding: EdgeInsets.only(left: 7, right: 7),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
              ],
            ),
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
              ],
            ),
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
              ],
            ),
            Stack(
              children: [
                Column(
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
                      padding: EdgeInsets.only(top: 20),
                      width: 180,
                      child: Text(
                        'Khu du lịch biển Alime, nơi bạn có thể ngắm được bầu trời tuyệt vời!',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
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
            _ChoseRegion,
            _AllSites,
            _Sites,
          ],
        ),
      ),
    );
  }
}
