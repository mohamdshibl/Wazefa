
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';



class Contactspage extends StatelessWidget {
  Contactspage({super.key});
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
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
                    'Messsages',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF111827)),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 70.w,
                  height: 5.5.h,
                  child:Container(
                    margin:  const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: const EdgeInsets.fromLTRB(12, 14, 26, 10),
                    width: 300,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Row(
                      children: const[
                        Image(image: AssetImage('assets/images/search.png'),),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search....',
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        context: context,
                        builder: (context) => const messagesbottomsheet());
                  },
                  child: Image.asset(AssetsImages.filter_rounded,),
                )
              ]),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      height: 3,
                      endIndent: 30,
                      indent: 60,
                      thickness: 1.5,
                    ),
                    itemCount: contactslist.length,
                    itemBuilder: (context, index) => ContactsCard(
                      contacsmodel: contactslist[index],
                    )),
              ),
            ],
          )),
      // bottomNavigationBar:
      // StatefulBuilder(builder: (context, StateSetter setstate) {
      //   return BottomNavigationBar(
      //       showUnselectedLabels: true,
      //       selectedItemColor: const Color(0xFF3366FF),
      //       unselectedItemColor: const Color(0xFF9CA3AF),
      //       currentIndex: selectedindex,
      //       onTap: (index) {
      //         setstate(() {
      //           selectedindex = index;
      //         });
      //       },
      //       items: [
      //         BottomNavigationBarItem(
      //             label: 'home',
      //             icon: Image.asset('assets/images/home.png'),
      //             activeIcon: Image.asset('assets/images/home2.png')),
      //         BottomNavigationBarItem(
      //             label: 'messages',
      //             icon: Image.asset('assets/images/message.png'),
      //             activeIcon: Image.asset('assets/images/message2.png')),
      //         BottomNavigationBarItem(
      //             label: 'Applied',
      //             icon: Image.asset('assets/images/briefcase2.png'),
      //             activeIcon: Image.asset('assets/images/briefcase.png')),
      //         BottomNavigationBarItem(
      //             label: 'Saved',
      //             icon: Image.asset('assets/images/archive.png'),
      //             activeIcon: Image.asset('assets/images/archive2.png')),
      //         const BottomNavigationBarItem(
      //             label: 'Profile', icon: Icon(Icons.person))
      //       ]);
      // }),
    );
  }
}

class ContactsCard extends StatelessWidget {
  Contacts contacsmodel;
  ContactsCard({
    Key? key,
    required this.contacsmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Chatpage()));
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

class Unreadmessages {
  String? name;
  String? message;
  String? image;
  dynamic time;
  Unreadmessages(
      {required this.name,
        required this.message,
        required this.image,
        required this.time});
}

List<Unreadmessages> unreadmessageslist = [
  Unreadmessages(
      name: 'Twitter',
      message: 'Here is the link: http://zoom.com/',
      image: 'assets/images/twiter.png',
      time: '12.39'),
  Unreadmessages(
      name: 'Gojek Indonesia',
      message: 'Lets keep in touch.',
      image: 'assets/images/twiter.png',
      time: ' 12.39'),
  Unreadmessages(
      name: 'Dana',
      message: 'Thank you for your attention!',
      image: 'assets/images/twiter.png',
      time: 'Yesterday'),
];
