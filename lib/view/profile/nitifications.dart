import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/profile/portfolio.dart';
import 'package:wazefa/view/profile/profile.dart';

import '../../constants/utils.dart';
import '../../model/profile_models/notifications_model.dart';
import 'language.dart';
import 'nitifications.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                       navigateTo(context, Profile(),);
                      },
                      icon: const Icon(Icons.arrow_back_rounded,),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  const Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff111827)),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.sp),
                child: Container(
                  height: 5.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffE5E7E4)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 8.sp , left: 20.sp),
                    child: const Text("Job notification",
                      style: TextStyle(fontSize:14 ,
                          fontWeight:FontWeight.w500 ,color: Color(0xff6B7280)),),
                  ),
                ),
              ) ,
              SizedBox(
                height: 50.h,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ShapeNotification(
                        notificationModel: NotificationModel.data[index],);
                      } ,
                    separatorBuilder: (context, index) =>const Divider()
                    , itemCount:NotificationModel.data.length),
              ) ,
              Container(
                height: 5.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xffE5E7E4)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 8.sp , left: 20.sp),
                  child: const Text("Other notification",
                    style: TextStyle(fontSize:14 ,
                        fontWeight:FontWeight.w500 ,color: Color(0xff6B7280)),),
                ),
              ) ,
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ShapeNotification2(
                        notificationModel2: NotificationModel2.data[index],);
                      } ,
                    separatorBuilder: (context, index) =>const Divider()
                    , itemCount:NotificationModel2.data.length),
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
class ShapeNotification extends StatefulWidget {
  NotificationModel notificationModel ;
  ShapeNotification({super.key , required this.notificationModel,});

  @override
  State<ShapeNotification> createState() => _ShapeNotificationState();
}

class _ShapeNotificationState extends State<ShapeNotification> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24),
      child: Container(
        height: 8.h,
        decoration: const BoxDecoration(
            color: Color(0xffFAFAFA)),
        child: Row(
          children: [
            SizedBox(
                width: 58.w,
                child:Text(widget.notificationModel.name,
                  style: const TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,color: Color(0xff111827)),)
            ),
            Spacer(),
            FlutterSwitch(
              width: 45.sp,
              height: 25.sp,
              valueFontSize: 25.0,
              toggleSize: 15.0,
              value: status,
              borderRadius: 25.0,
              padding: 8.0,
              showOnOff: false,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
