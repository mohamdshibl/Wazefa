
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class Job {
//   final int id;
//   final String name;
//   final String image;
//   final String jobTimeType;
//   final String jobType;
//   final String jobLevel;
//   final String jobDescription;
//   final String jobSkill;
//   final String compName;
//   final String compEmail;
//   final String compWebsite;
//   final String aboutComp;
//   final String location;
//   final String salary;
//   final int favorites;
//   final int expired;
//   final String createdAt;
//   final String updatedAt;
//
//   Job({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.jobTimeType,
//     required this.jobType,
//     required this.jobLevel,
//     required this.jobDescription,
//     required this.jobSkill,
//     required this.compName,
//     required this.compEmail,
//     required this.compWebsite,
//     required this.aboutComp,
//     required this.location,
//     required this.salary,
//     required this.favorites,
//     required this.expired,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   factory Job.fromJson(Map<String, dynamic> json) {
//     return Job(
//       id: json['id'],
//       name: json['name'],
//       image: json['image'],
//       jobTimeType: json['job_time_type'],
//       jobType: json['job_type'],
//       jobLevel: json['job_level'],
//       jobDescription: json['job_description'],
//       jobSkill: json['job_skill'],
//       compName: json['comp_name'],
//       compEmail: json['comp_email'],
//       compWebsite: json['comp_website'],
//       aboutComp: json['about_comp'],
//       location: json['location'],
//       salary: json['salary'],
//       favorites: json['favorites'],
//       expired: json['expired'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//     );
//   }
// }
//
// class JobsList extends StatefulWidget {
//   @override
//   _JobsListState createState() => _JobsListState();
// }
//
// class _JobsListState extends State<JobsList> {
//   List<Job> _jobs = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchJobs();
//   }
//
//   Future<void> _fetchJobs() async {
//     try {
//       final response = await http.get(
//         Uri.parse('http://164.92.246.77/api/jobs'),
//         headers: {
//           'Authorization': 'Bearer 160|untIjZroEZhHgNPdsnFZ2TWnO4mCqolXJQREdDVF'
//         },
//       );
//       if (response.statusCode == 200) {
//         List<dynamic> jsonResponse = json.decode(response.body)['data'];
//         List<Job> jobs = jsonResponse.map((job) => Job.fromJson(job)).toList();
//         setState(() {
//           _jobs = jobs;
//         });
//       } else {
//         throw Exception('Failed to load jobs');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Jobs List'),
//       ),
//       body: _jobs.isEmpty
//           ? Center(
//         child: CircularProgressIndicator(),
//       )
//           : ListView.builder(
//         itemCount: _jobs.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(_jobs[index].name),
//             subtitle: Text(_jobs[index].jobDescription),
//           );
//         },
//       ),
//     );
//   }
// }


// import 'package:dio/dio.dart';
//
// class DioHelper {
//   static Dio? dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'http://164.92.246.77/api/',
//         receiveDataWhenStatusError: true,
//         headers: {
//           'Authorization' : 'jxLnsxOjadcD9vtxGSzZrQ4PT08ERFB6zUg1poGM',
//           'Content-Type' : 'multipart/form-data; boundary=<calculated when request is sent>'
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
//   Response response = await dio!.get(
//       url,
//       queryParameters: query);
//   return response;
//
//
//     // return await dio!.get(
//     //     url,
//     //     queryParameters: query);
//   }
// /// post data
//   static Future<Response> postData({
//     required String url,
//     Map<String,dynamic>? query,
//     required Map<String,dynamic> data,
//     String lang = 'ar',
//     String? token,
//   }) async {
//     dio!.options.headers =  {
//       'lang':lang,
//       'Authorization' : token,
//     };
//     return await dio!.post(
//         url,
//         data: data ,
//         );
//   }
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