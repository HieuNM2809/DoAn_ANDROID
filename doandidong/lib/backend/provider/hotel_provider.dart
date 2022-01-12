import 'package:doandidong/backend/object/hotel_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelProvider {
  static List<HotelObject> parseHotels(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<HotelObject>((e) => HotelObject.fromJson(e)).toList();
  }

  static Future<List<HotelObject>> getAllHotel() async {
    String url = dotenv.env['API_URL_CUS']! + '/api/hotel';
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    final response = await http.get(Uri.parse(url), headers: userHeader);
    return parseHotels(response.body);
  }
}
