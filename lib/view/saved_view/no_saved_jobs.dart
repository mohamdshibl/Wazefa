
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import '../../constants/constants.dart';
import '../../constants/utils.dart';

class EmptySaved extends StatelessWidget {

  const EmptySaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Image.asset(AssetsImages.noSaved,
              height: 30.h,
              width: 50.w,
            ),
          ),
          Text(
            'Nothing has been saved yet',
            style: TextStyle(
                fontSize: 19.sp,
                color: Color(0xff111827),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.h),
          Center(
            //padding: const EdgeInsets.only(left: 50.0, right: 30.0),
            child: Text(
              'Press the star icon on the job you want to save.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xff6B7280),
              ),
            ),
          ),
        ],
      ),
    );
  }
}