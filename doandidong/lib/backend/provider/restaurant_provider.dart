import 'dart:convert';
import 'package:doandidong/backend/object/restaurant_object.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class RestaurantProvider {
  static List<RestaurantObject> parseRto(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    List<RestaurantObject> ls =
        parsed.map<RestaurantObject>((e) => RestaurantObject.fromJson(e)).toList();
    return ls;
  }

  static Future<List<RestaurantObject>> fecthHarbou() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.9:80/api/restaurant'));
    return parseRto(response.body);
  }
}
