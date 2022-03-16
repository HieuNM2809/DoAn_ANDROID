import 'dart:convert';

import 'package:doandidong/backend/object/post_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class PostProvider {
  static List<PostObject> parsePO(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<PostObject> ls =
        parsed.map<PostObject>((e) => PostObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<PostObject>> fecthHarbou() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.4:80/api/post'));
    return parsePO(response.body);
  }
}
