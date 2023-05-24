import 'dart:async';

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/custom_widgets.dart';
import '../onboarding/onboard_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () => navigateToAndStop(context,const OnBoardingScreen()) );

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}


