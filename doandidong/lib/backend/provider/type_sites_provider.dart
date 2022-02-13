import 'dart:convert';

import 'package:doandidong/backend/object/type_sites_object.dart';
import 'package:http/http.dart' as http;

class TypeSiteProvider {
  static List<SitesObject> parseTS(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<SitesObject> ls =
        parsed.map<SitesObject>((e) => SitesObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<SitesObject>> fecthHarbou() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.9:80/api/types-sites'));
    return parseTS(response.body);
  }
}
