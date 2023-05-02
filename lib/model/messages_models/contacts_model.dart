import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';

import '../../view/messages/chat.dart';
class ContactsCard extends StatelessWidget {
  Contacts contacsmodel;

  ContactsCard({Key? key, required this.contacsmodel,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          navigateTo(context, ChatPage());
        },
        leading: Image.asset('${contacsmodel.image}'),
        title: Text(
          '${contacsmodel.name}',
          style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF111827),
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          '${contacsmodel.message}',
          style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
        ),
        trailing: Text('${contacsmodel.time}'));
  }
}
class Contacts {
  String? name;
  String? message;
  String? image;
  dynamic time;
  Contacts(
      {required this.name,
        required this.message,
        required this.image,
        required this.time});
}

List<Contacts> contactslist = [
  Contacts(
      name: 'Twitter',
      message: 'Here is the link: http://zoom.com/',
      image: 'assets/images/twiter.png',
      time: '12.39'),
  Contacts(
      name: 'Gojek Indonesia',
      message: 'Lets keep in touch.',
      image: 'assets/images/twiter.png',
      time: ' 12.39'),
  Contacts(
      name: 'Shoope',
      message: 'Thank You David!',
      image: 'assets/images/zoom.png',
      time: '09.45'),
  Contacts(
      name: 'Dana',
      message: 'Thank you for your attention!',
      image: 'assets/images/zoom.png',
      time: 'Yesterday'),
  Contacts(
      name: 'Slack',
      message: 'You: I look forward to hearing from you',
      image: 'assets/images/zoom.png',
      time: '12/8'),
  Contacts(
      name: 'Facebook',
      message: 'You: What about the interview stage?',
      image: 'assets/images/twiter.png',
      time: '12/8')
];


