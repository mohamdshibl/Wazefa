

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/view/Home/Home_Screen.dart';
import 'package:wazefa/view/onboarding/onboard_screen.dart';

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
             theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),
             debugShowCheckedModeBanner: false,
             home: OnBoardingScreen(),
         );
       }
   );
  }
}
//ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),

