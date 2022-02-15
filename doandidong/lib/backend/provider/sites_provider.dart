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
}
