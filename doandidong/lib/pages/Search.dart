import 'package:doandidong/backend/object/sites_object.dart';
import 'package:doandidong/backend/provider/sites_provider.dart';
import 'package:doandidong/pages/DetailSites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_sharp),
    );
  }

  SiteProvider _siteList = SiteProvider();

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<SitesObject>>(
              future: _siteList.getAllSites(query: query),
              builder: (
                context,
                snapshot,
              ) {
                var data = snapshot.data;
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                ;
                return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailSites()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Load hình ảnh
                              Container(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                width: 100,
                                height: 90,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    dotenv.env['API_URL_CUS']! +
                                        "/upload/sites/${data?[index].image}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 4,
                                height: 4,
                              ),
                              // Tên nơi lưu trú
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '${data?[index].name}',
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
                                    height: 40,
                                    width: 250,
                                    child: Text(
                                      '${data?[index].description}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              Text('251'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.share),
                                              ),
                                              Text('34')
                                            ],
                                          ),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Tìm kiếm địa danh'),
    );
  }
}
