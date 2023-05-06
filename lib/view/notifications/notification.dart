
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';


class NotificationPage extends StatelessWidget{
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
  listener: (context, state) {},
  builder: (context, state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 25,
                      )),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF111827)),
                  )
                ],
              ),
              Container(
                  height: 5.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F5),
                      border: Border.all(color: const Color(0xFFE5E7EB))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6B7280)),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 40.h,
                width: 300.w,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      height: 2,
                      endIndent: 30,
                      indent: 30,
                      thickness: 1.5,
                    ),
                    itemCount: notificationList.length,
                    itemBuilder: (context, index) => ListTile(
                        leading: Image.asset('${notificationList[index].icon}'),
                        title: Text(
                          '${notificationList[index].title}',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xFF111827),
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text('${notificationList[index].subtitle}'),
                        trailing: Text('${notificationList[index].time}'))),
              ),
              Container(
                  height: 5.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F4F5),
                      border: Border.all(color: const Color(0xFFE5E7EB))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Yesterday',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6B7280)),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      height: 3,
                      endIndent: 30,
                      indent: 30,
                      thickness: 1.5,
                    ),
                    itemCount: oldNotificationList.length,
                    itemBuilder: (context, index) => ListTile(
                        leading:
                        Image.asset('${oldNotificationList[index].icon}'),
                        title: Text(
                          '${oldNotificationList[index].title}',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xFF111827),
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle:
                        Text('${oldNotificationList[index].subtitle}'),
                        trailing: Text('${oldNotificationList[index].time}'))),
              ),
              //Image.asset('assets/images/line.png')
            ],
          ),
        ),
      ),
    );
  },
);
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first


class NotificationCard extends StatelessWidget {
  Notifications model;
  NotificationCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset('${model.icon}'),
        title: Text(
          '${model.title}',
          style: TextStyle(
              fontSize: 12.sp,
              color: Color(0xFF111827),
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text('${model.subtitle}'),
        trailing: Text('${model.time}'));
  }
}
class Notifications {
  String? title;
  String? subtitle;
  String? icon;
  String? time;
  Notifications({
    this.title,
    this.subtitle,
    this.icon,
    this.time,
  });
}

List<Notifications> notificationList = [
  Notifications(
      title: 'Dana',
      subtitle: 'Posted new design jobs',
      icon: 'assets/images/zoom.png',
      time: '10.00AM'),
  Notifications(
      title: 'Shoope',
      subtitle: 'Posted new design jobs',
      icon: 'assets/images/zoom.png',
      time: '10.00AM'),
  Notifications(
      title: 'Slack',
      subtitle: 'Posted new design jobs',
      icon: 'assets/images/zoom.png',
      time: '10.00AM'),
  Notifications(
      title: 'Facebook',
      subtitle: 'Posted new design jobs',
      icon: 'assets/images/zoom.png',
      time: '10.00AM')
];

class OldNotification {
  String? title;
  String? subtitle;
  String? icon;
  String? time;
  OldNotification({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.time,
  });
}

List<OldNotification> oldNotificationList = [
  OldNotification(
      title: 'Email setup successful',
      subtitle:
      'Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.',
      icon: 'assets/images/Email.png',
      time: '10.00AM'),
  OldNotification(
      title: 'Welcome to Jobsque',
      subtitle:
      'Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....',
      icon: 'assets/images/searchlogo.png',
      time: '8.00AM'),
];
