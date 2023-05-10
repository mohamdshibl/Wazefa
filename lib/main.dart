import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/shared/local/shared_pref.dart';
import 'package:wazefa/shared/remote/dio_helper.dart';
import 'package:wazefa/view/Home/Home.dart';
import 'package:wazefa/view/Home/Home_Screen.dart';
import 'package:wazefa/view/Search_Screen/search_view_filter.dart';
import 'package:wazefa/view/apply_job/apply_job_view.dart';
import 'package:wazefa/view/job_details/job_dedails_view.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import 'package:wazefa/view/messages/chat.dart';
import 'package:wazefa/view/messages/messages.dart';
import 'package:wazefa/view/notifications/notification.dart';
import 'package:wazefa/view/onboarding/onboard_screen.dart';
import 'package:wazefa/view/profile/edit_profile.dart';
import 'package:wazefa/view/profile/profile.dart';
import 'package:wazefa/view/saved_view/saved_view.dart';

import 'Cubit/app_cubit.dart';
import 'Cubit/app_states.dart';
import 'constants/bloc_obswrver.dart';
import 'constants/custom_widgets.dart';
import 'package:dio/dio.dart';
import 'model/jobs_model/jobs_model.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await MyCache.init();
 // bool onBoarding = MyCache.getData(key: 'onBoarding');
  //print(onBoarding);
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),
      ),
  );
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Colors.black)
  // );
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(
  //         statusBarColor: Colors.deepPurpleAccent
  //       //color set to purple or set your own color
  //     )
  // );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => JobsCubit()..getAllJobs(),

    child: Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                 // initialRoute: ,
                  useInheritedMediaQuery: true,
                  locale: DevicePreview.locale(context),
                  builder: DevicePreview.appBuilder,
                  theme: ThemeData().copyWith(),
                  debugShowCheckedModeBanner: false,
                  home: OnBoardingScreen(),
                );
              }
          ),
    );
  }
}
//ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),

