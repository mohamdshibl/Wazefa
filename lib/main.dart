

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/view/Home/Home_Screen.dart';
import 'package:wazefa/view/Search_Screen/search_Screen.dart';
import 'package:wazefa/view/Search_Screen/search_view_filter.dart';
import 'package:wazefa/view/Splash/splash_view.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import 'package:wazefa/view/onboarding/onboard_screen.dart';


void main() {
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),)
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.black)
  );
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
   return FlutterSizer(
       builder: (context, orientation, deviceType) {
         return MaterialApp(
           useInheritedMediaQuery: true,
           locale: DevicePreview.locale(context),
           builder: DevicePreview.appBuilder,
             theme: ThemeData().copyWith(),
             debugShowCheckedModeBanner: false,
             home: SearchViewFilter(),
         );
       }
   );
  }
}
//ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),

