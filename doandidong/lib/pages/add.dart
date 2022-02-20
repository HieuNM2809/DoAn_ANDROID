import 'package:flutter/material.dart';
import 'package:doandidong/layout/footter.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    Widget Login = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tạo bài viết',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Divider(
                    color: Colors.black.withOpacity(0.8),
                    indent: 20,
                    endIndent: 20),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image.asset(
                            'images/mienbac.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Họ và tên',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Bạn đã đi đến đâu rồi?',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.image,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.insert_emoticon,
                            color: Colors.black, size: 40),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.location_on,
                            color: Colors.red, size: 40),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Thông báo'),
                        content: const Text('Xác nhận đăng bài viết mới'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Huỷ'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FootterPage())),
                            child: const Text('Đồng ý'),
                          ),
                        ],
                      ),
                    ),
                    child: Text(
                      'Đăng bài',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Color(0xff33ccff),
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                  ),
                ),
              ],
            ),
          ),
        ],
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
      body: Center(
        child: ListView(
          children: [
            Login,
          ],
        ),
      ),
    );
  }
}
