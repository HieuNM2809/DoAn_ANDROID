import 'package:doandidong/backend/object/sites_object.dart';
import 'package:doandidong/pages/DetailSites.dart';
import 'package:doandidong/pages/ListSites.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  List<SitesObject> lsSites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff33ccff),
        title: Container(
          child: TextField(
            autofocus: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      // body: Container(
      //   margin: EdgeInsets.all(10),
      //   child: ListView.builder(
      //     itemCount: lsSites.length,
      //     itemBuilder: (context, index) => Card(
      //       child: Card(
      //         child: InkWell(
      //           splashColor: Colors.blue.withAlpha(30),
      //           onTap: () {
      //             int? id = lsSites[index].id;
      //             if (id != null) {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => DetailSites()));
      //             }
      //           },
      //           child: Container(
      //             margin: EdgeInsets.all(5),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Container(
      //                   padding: EdgeInsets.only(left: 5, right: 5),
      //                   width: 100,
      //                   height: 90,
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.all(Radius.circular(10)),
      //                     child: Image.asset(
      //                       'images/Vung_Tau.jpg',
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   width: 4,
      //                   height: 4,
      //                 ),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Container(
      //                       child: Row(
      //                         children: [
      //                           Text(
      //                             lsSites[index].name,
      //                             softWrap: true,
      //                             style: TextStyle(
      //                               color: Colors.blue,
      //                               fontSize: 18,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                           ),
      //                           Icon(
      //                             Icons.border_color_outlined,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     SizedBox(
      //                       width: 4,
      //                       height: 4,
      //                     ),
      //                     Container(
      //                       height: 40,
      //                       width: 250,
      //                       child: Text(
      //                         lsSites[index].description,
      //                         overflow: TextOverflow.ellipsis,
      //                         maxLines: 2,
      //                         softWrap: true,
      //                         style: TextStyle(
      //                             fontSize: 14, fontWeight: FontWeight.bold),
      //                       ),
      //                     ),
      //                     Container(
      //                       child: Row(
      //                         children: [
      //                           Icon(
      //                             Icons.location_on,
      //                             color: Colors.red,
      //                           ),
      //                           Text(
      //                             'Bản đồ chỉ dẫn',
      //                             softWrap: true,
      //                             style: TextStyle(
      //                                 color: Colors.black,
      //                                 fontSize: 18,
      //                                 fontWeight: FontWeight.bold),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
