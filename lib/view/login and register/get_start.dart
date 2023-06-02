
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import '../../constants/constants.dart';
import '../../constants/utils.dart';

class GetStarted extends StatefulWidget {

  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStarted();
}

class _GetStarted extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:Image.asset(AssetsImages.successAccount,
                height: 30.h,
                width: 50.w,
              ),
            ),
            Text(
              'Your account has been set up!',
              style: TextStyle(
                  fontSize: 19.sp,
                  color: Color(0xff111827),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1.h),
            Center(
              //padding: const EdgeInsets.only(left: 50.0, right: 30.0),
              child: Text(
                'We have customized feeds according to your preferences',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff6B7280),
                ),
              ),
            ),
          ],
        ),
      floatingActionButton: Container(
          color: Colors.transparent,
          child: mainbuttom(text: 'Get Started', onTap: () {
            navigateToAndStop(context,LoginScreen() );

          })
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}