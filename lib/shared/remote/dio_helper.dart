import 'package:dio/dio.dart';

import '../local/shared_pref.dart';

class NetworkService {
  final Dio dio = Dio();
  String? token = MyCache.getData(key: 'token')!;
  Future<Response> postData(String url, dynamic data) async {
    try {
      dio.options.headers['Authorization'] = 'Bearer $token';
      final response = await dio.post(url, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put(String url, dynamic data) async {
    try {
      dio.options.headers['Authorization'] = 'Bearer $token';
      final response = await dio.put(url, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> delete(String url) async {
    try {
      dio.options.headers['Authorization'] = 'Bearer $token';
      final response = await dio.delete(url);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<Response> get(String url) async {
    try {
      dio.options.headers['Authorization'] = 'Bearer $token';
      final response = await dio.get(url);
      return response;
    } catch (e) {
      throw e;
    }
  }
}




// class ApiProvider {
 //  static Dio? dio;
 //
 //  ApiProvider() {
 //   init();
 //  }
 //
 //  void init() {
 //   dio = Dio();
 //   dio?.options.baseUrl = 'http://164.92.246.77/api';
 //  }
 //
 //  static Future<List<JobsModel>> getSavedJobs(int id) async {
 //   Response response;
 //   try {
 //    response = await dio!.get('/favorites/$id');
 //   } catch (e) {
 //    print(e);
 //    return [];
 //   }
 //
 //   if (response.statusCode != 200) {
 //    return [];
 //   }
 //
 //   List<dynamic> data = response.data;
 //   List<JobsModel> jobs = data.map((job) => JobsModel.fromJson(job)).toList();
 //
 //   return jobs;
 //  }
 // }

 // class ApiProvider {
 //   static Dio? dio;
 //   String? token = MyCache.getData(key: 'token')!;
 //
 //   ApiProvider() {
 //     init();
 //   }
 //
 //   void init() {
 //     dio = Dio();
 //     dio?.options.baseUrl = 'http://164.92.246.77/api';
 //
 //     // Set the "Authorization" header with the token
 //     if (token != null) {
 //       dio?.options.headers['Authorization'] = 'Bearer $token';
 //     }
 //   }
 //
 //   Future<Response> postFavorite(int userId, int jobId) async {
 //     Response response;
 //     try {
 //       response = await dio!.post('/favorites', data: {'user_id': userId, 'ob_id': jobId});
 //     } catch (e) {
 //       print(e);
 //     }
 //     return response;
 //   }
 //
 //   Future<Response> deleteFavorite(int jobId, int userId) async {
 //     Response response;
 //     try {
 //       response = await dio!.delete('/favorites/$jobId', data: {'user_id': userId});
 //     } catch (e) {
 //       print(e);
 //     }
 //     return response;
 //   }
 // }


// class ApiProvider {
//   static Dio? dio;
//   String? token = MyCache.getData(key: 'token')!;
//
//        init() {
//     dio = Dio();
//     dio?.options.baseUrl = 'http://164.92.246.77/api';
//
//     // Set the "Authorization" header with the token
//     if (token != null) {
//       dio?.options.headers['Authorization'] = 'Bearer $token';
//     }
//   }
//   Future<Response> postFavorite(int userId, int jobId) async {
//     Response response;
//     try {
//       response = await dio!.post('/favorites', data: {'user_id': userId, 'ob_id': jobId});
//     } catch (e) {
//       print(e);
//     }
//     return response;
//   }
//
//   Future<Response> deleteFavorite(int jobId, int userId) async {
//     Response response;
//     try {
//       response = await dio.delete('/favorites/$jobId', data: {'user_id': userId});
//     } catch (e) {
//       print(e);
//     }
//     return response;
//   }
// }



// class DioHelper {
//   static Dio? dio;
//   static init() {
//    // String token  = '312|oWb59RbbuN6t5jB8e2lpGhbHkX6PamcvJYapljHh';
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'http://164.92.246.77/api/',
//         receiveDataWhenStatusError: true,
//         headers: {
//           // 'Content-Type': 'application/json',
//           // 'Accept': 'application/json',
//           // 'Authorization': 'Bearer $token',
//         }
//       ),
//     );
//   }
// /// get data
//   static Future<Response> getData({
//     required String url,
//     required Map<String,dynamic> query,
//    String lang = 'ar',
//     String? token,
//   }) async {
//
//     dio!.options.headers =  {
//       'lang':lang,
//       'Authorization' : token,
//     };
//   Response response = await dio!.get(url, queryParameters: query);
//
//   return response;
//   }
// /// post data
//   static Future<Response> postDataa({
//     required String url,
//     Map<String,dynamic>? query,
//     required Map<String,dynamic> data,
//     String? token,})
//
//   async {
//     dio!.options.headers =  {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//      // 'Authorization' : token,
//     };
//     return  dio!.post(url, data: data );
//   }
//
// Future<void>postData({
//   required  String urlEndPoint,
//   Map<String ,dynamic >? data,
//   Map<String, dynamic>? query,
//   String? token,
// })async{
//   try{
//     dio?.options.headers={
//       "Authorization": "Bearer ${token ?? ""}"
//     };
//     Response response=await dio!.post(urlEndPoint,
//       data: data,
//       queryParameters:query,
//     );
//     // return response;
//   }catch(e){
//     rethrow;
//   }
// }
// }
//
// // import 'dart:convert';
// // import 'dart:html';
// //
// // import 'package:dio/dio.dart';
// //
// // class DioHelper {
// //   static Dio? dio;
// //   static init (){
// //     dio = Dio(
// //       BaseOptions(
// //         baseUrl: 'https://reqres.in/api/users',
// //             receiveDataWhenStatusError: true,
// //       )
// //     );
// //   }
// //
// //   void getData(
// //       String url,
// //       Map query,
// //       ) async {
// //     try {
// //       Response response = await dio!.get(url,queryParameters: query);
// //       print(response.data);
// //       print(response.statusCode);
// //     } catch (e){
// //       print('Failed to load ${e} ss');
// //     }
// //   }
// // }