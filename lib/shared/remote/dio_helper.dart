import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
   // String token  = '312|oWb59RbbuN6t5jB8e2lpGhbHkX6PamcvJYapljHh';
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://164.92.246.77/api/',
        receiveDataWhenStatusError: true,
        headers: {
          // 'Content-Type': 'application/json',
          // 'Accept': 'application/json',
          // 'Authorization': 'Bearer $token',
        }
      ),
    );
  }
/// get data
  static Future<Response> getData({
    required String url,
    required Map<String,dynamic> query,
   String lang = 'ar',
    String? token,
  }) async {

    dio!.options.headers =  {
      'lang':lang,
      'Authorization' : token,
    };
  Response response = await dio!.get(url, queryParameters: query);

  return response;
  }
/// post data
  static Future<Response> postDataa({
    required String url,
    Map<String,dynamic>? query,
    required Map<String,dynamic> data,
    String? token,})

  async {
    dio!.options.headers =  {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
     // 'Authorization' : token,
    };
    return  dio!.post(url, data: data );
  }

Future<void>postData({
  required  String urlEndPoint,
  Map<String ,dynamic >? data,
  Map<String, dynamic>? query,
  String? token,
})async{
  try{
    dio?.options.headers={
      "Authorization": "Bearer ${token ?? ""}"
    };
    Response response=await dio!.post(urlEndPoint,
      data: data,
      queryParameters:query,
    );
    // return response;
  }catch(e){
    rethrow;
  }
}
}

// import 'dart:convert';
// import 'dart:html';
//
// import 'package:dio/dio.dart';
//
// class DioHelper {
//   static Dio? dio;
//   static init (){
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://reqres.in/api/users',
//             receiveDataWhenStatusError: true,
//       )
//     );
//   }
//
//   void getData(
//       String url,
//       Map query,
//       ) async {
//     try {
//       Response response = await dio!.get(url,queryParameters: query);
//       print(response.data);
//       print(response.statusCode);
//     } catch (e){
//       print('Failed to load ${e} ss');
//     }
//   }
// }