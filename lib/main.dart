

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/view/Home/Home_Screen.dart';
import 'package:wazefa/view/Search_Screen/search_view_filter.dart';
import 'package:wazefa/view/apply_job/apply_job_view.dart';
import 'package:wazefa/view/job_details/job_dedails_view.dart';
import 'package:wazefa/view/onboarding/onboard_screen.dart';
import 'package:wazefa/view/saved_view/saved_view.dart';

import 'constants/custom_widgets.dart';


void main() {
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),)
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.black)
  );
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent
        //color set to purple or set your own color
      )
  );
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
   return Sizer(
       builder: (context, orientation, deviceType) {
         return MaterialApp(

           useInheritedMediaQuery: true,
           locale: DevicePreview.locale(context),
           builder: DevicePreview.appBuilder,
             theme: ThemeData().copyWith(),
             debugShowCheckedModeBanner: false,
             home: Savedjobs(),
         );
       }
   );
  }
}
//ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),

