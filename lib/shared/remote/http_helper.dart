import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  //String url = 'http://164.92.246.77/api/jobs';
  String token = '30|jxLnsxOjadcD9vtxGSzZrQ4PT08ERFB6zUg1poGM';

  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url),headers:{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode== 200){
      print('shiblllllllllllll');
      return jsonDecode(response.body)['data'];

    }
    else{
      throw Exception('problem with status code ${response.statusCode}');
    }
  }
}