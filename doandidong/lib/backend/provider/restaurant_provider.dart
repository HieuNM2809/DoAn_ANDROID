import 'dart:convert';
import 'package:doandidong/backend/object/restaurant_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class RestaurantProvider {
  static List<RestaurantObject> parseRto(String source) {
    final parsed = jsonDecode(source).cast<Map<String, dynamic>>();
    return parsed
        .map<RestaurantObject>((e) => RestaurantObject.fromJson(e))
        .toList();
  }

  static Future<List<RestaurantObject>> getAllRestaurant() async {
    String url = dotenv.env['API_URL_CUS']! + '/api/restaurant';
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    final response = await http.get(Uri.parse(url), headers: userHeader);
    return parseRto(response.body);
  }
}
