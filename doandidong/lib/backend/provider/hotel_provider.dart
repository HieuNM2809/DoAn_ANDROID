import 'package:doandidong/backend/object/hotel_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelProvider {
  static Future<List<dynamic>> parseHotels() async {
    var url = "http://192.168.1.5/api/hotel";
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    var data = json.decode(response.body);
    return data['hotel'];
  }

  static Future<List<HotelObject>> getAllHotel() async {
    List<HotelObject> lsResult = [];
    List<dynamic> data = await parseHotels();
    lsResult = data.map((e) => HotelObject.fromJson(e)).toList();
    return lsResult;
  }
}
