
import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type' : 'application/json',
          'lang' : 'en',
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
  Response response = await dio!.get(
      url,
      queryParameters: query);
  return response;

    // return await dio!.get(
    //     url,
    //     queryParameters: query);
  }
/// post data
  static Future<Response> postData({
    required String url,
    Map<String,dynamic>? query,
    required Map<String,dynamic> data,
    String lang = 'ar',
    String? token,
  }) async {
    dio!.options.headers =  {
      'lang':lang,
      'Authorization' : token,
    };
    return await dio!.post(
        url,
        data: data ,
        );
  }
}