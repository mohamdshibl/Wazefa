import 'package:easy_stepper/easy_stepper.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ShapeNotification2 extends StatefulWidget {
  NotificationModel2 notificationModel2 ;
  ShapeNotification2({super.key , required this.notificationModel2 });

  @override
  State<ShapeNotification2> createState() => _ShapeNotificationState();
}

class _ShapeNotificationState extends State<ShapeNotification2> {
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
                child:Text(widget.notificationModel2.name,
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

class NotificationModel {

  String name ;

  NotificationModel({required this.name}) ;

  static List<NotificationModel> data = [
    NotificationModel(
      name: "Your Job Search Alert",
    ),
    NotificationModel(
      name: "Job Application Update",
    ),
    NotificationModel(
      name: "Job Application Reminders",
    ),
    NotificationModel(
      name: "Jobs You May Be Interested In",
    ),
    NotificationModel(
      name: "Job Seeker Updates",
    ),

  ];

}
class NotificationModel2 {

  String name ;

  NotificationModel2({required this.name}) ;

  static List<NotificationModel2> data = [
    NotificationModel2(
      name: "Show Profile",
    ),
    NotificationModel2(
      name: "All Message",
    ),
    NotificationModel2(
      name: "Message Nudges",
    ),


  ];

}


