import 'package:doandidong/backend/object/sites_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SiteProvider {
  static List<SitesObject> parseSO(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<SitesObject> ls =
        parsed.map<SitesObject>((e) => SitesObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<SitesObject>> getAllSite() async {
    String url = dotenv.env['API_URL_CUS']! + '/api/sites';
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    final response = await http.get(Uri.parse(url), headers: userHeader);
    return parseSO(response.body);
  }

  static Future<List<SitesObject>> getSite(int? id) async {
    String url = dotenv.env['API_URL_CUS']! + '/api/sites';
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    final response = await http.get(Uri.parse(url), headers: userHeader);
    return parseSO(response.body);
  }

  //Search and Load Site
  var data = [];
  List<SitesObject> results = [];
  String fetchURL = dotenv.env['API_URL_CUS']! + '/api/sites';
  Map<String, String> userHeader = {
    "Content-type": "application/json",
    "Accept": "application/json"
  };
  Future<List<SitesObject>> getAllSites({String? query}) async {
    var url = Uri.parse(fetchURL);
    var response = await http.get(Uri.parse(fetchURL), headers: userHeader);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => SitesObject.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) =>
                  element.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error:$e');
    }
    return results;
  }
}
