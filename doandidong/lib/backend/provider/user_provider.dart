import 'dart:convert';
import 'package:doandidong/backend/object/user_object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  static List<UserObject> parseUsers(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<UserObject>((e) => UserObject.fromJson(e)).toList();
  }

  static List<TokenObject> parseToken(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<TokenObject>((e) => TokenObject.fromJson(e)).toList();
  }

  static Future<List<TokenObject>> getToken(email, password) async {
    String url = dotenv.env['API_URL_CUS']! + '/api/sanctum/token';
    //header
    Map<String, String> userHeader = {"Accept": "application/json"};
    //data
    var data = {
      "email": "iwlDJD2PhX@gmail.com",
      "password": "password",
      "device_name": "phone"
    };

    final response =
        await http.post(Uri.parse(url), headers: userHeader, body: data);
    return parseToken(response.body);
  }
}


  // static Future<List<UserObject>> getAllUser() async {
  //   String url = dotenv.env['API_URL_CUS']! + '/api/user';
  //   Map<String, String> userHeader = {
  //     "Content-type": "application/json",
  //     "Accept": "application/json"
  //   };
  //   final response = await http.get(Uri.parse(url), headers: userHeader);
  //   return parseUsers(response.body);
  // }