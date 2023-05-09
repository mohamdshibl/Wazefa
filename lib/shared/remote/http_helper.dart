import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {

  String token = '30|jxLnsxOjadcD9vtxGSzZrQ4PT08ERFB6zUg1poGM';

  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url),headers:{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode== 200){
     // print('shiblllllllllllll');

      return jsonDecode(response.body)['data'];
    }
    else{
      throw Exception('problem with status code ${response.statusCode}');
    }
  }
}


class ApiPost {

  //String url = '/auth/register?name=ahmed&email=ahmed@gmail.com&password=123456';
  String token = '315|a4SykAN1q560ZxqedtRRfKwGV3Qs4ljOSdMSLWZj';

  Future<dynamic> post({required String url}) async {

    http.Response response = await http.post(Uri.parse(url),headers:{
      // 'Content-Type': 'application/json',
      // 'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    },body: {
    'password':'123456',
    'email':'ahmedshibl@gmail.com'
    });
    if (response.statusCode== 200){
      print('shiblllllllllllll');
      print(response.body);
      return jsonDecode(response.body)['data'];
    }
    else{
      throw Exception('problem with status code ${response.statusCode}');
    }
  }
}

