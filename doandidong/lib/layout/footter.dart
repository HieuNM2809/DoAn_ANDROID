import 'package:doandidong/pages/CategoryUI.dart';
import 'package:doandidong/pages/accountsetting.dart';
import 'package:doandidong/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/pages/ListSites.dart';
import 'package:doandidong/pages/accountPost.dart';
import 'package:doandidong/pages/add.dart';

class FootterPage extends StatefulWidget {
  FootterPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FootterPageState();
  }
}

class FootterPageState extends State<FootterPage> {
  int SelectedIndex = 0;
  List<Widget> _widgetOption = <Widget>[
    HomePage(),
    CategoryUI(),
    Add(),
    AccountPost(),
  ];
  void onItemTapped(int index) {
    setState(() {
      SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(SelectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              title: Text('Home'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.grey),
              title: Text('Suggest'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.grey),
              title: Text('Add'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              title: Text('Account'),
              backgroundColor: Colors.white),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: SelectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: onItemTapped,
        elevation: 5,
      ),
    );
  }
}
