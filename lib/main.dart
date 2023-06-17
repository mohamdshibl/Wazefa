import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/shared/local/shared_pref.dart';
import 'package:wazefa/view/Splash/splash_view.dart';
import 'Cubit/app_cubit.dart';
import 'constants/bloc_obswrver.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
 //DioHelper.init();
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
        create: (_) => JobsCubit()..currentIndexs,

    child: Sizer(
              builder: (context, orientation, deviceType) {
                return MaterialApp(
                 // initialRoute: ,
                  useInheritedMediaQuery: true,
                  locale: DevicePreview.locale(context),
                  builder: DevicePreview.appBuilder,
                  theme: ThemeData().copyWith(),
                  debugShowCheckedModeBanner: false,
                  home: SplashView(),
                );
              }
          ),
    );
  }
}
//ThemeData().copyWith(scaffoldBackgroundColor: Colors.white),

