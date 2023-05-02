import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import '../../constants/custom_widgets.dart';
import 'messages.dart';



class UnreadMessages extends StatelessWidget {
   UnreadMessages({super.key});
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
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
                height: 7.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xFF292D32),
                      ),
                      hintText: 'Search messages....',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9CA3AF)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(85.0),
                          borderSide: const BorderSide(color: Color(0xFFD1D5DB))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(85.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 180, 177, 177),
                          ))),
                ),
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
                child: Image.asset('assets/images/Filter.png'),
              )
            ]),
            SizedBox(
              height: 4.h,
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
                        'Unread',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6B7280)),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Read all messages',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3366FF)),
                      ),
                    )
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
                    indent: 60,
                    thickness: 1.5,
                  ),
                  itemCount: unreadmessageslist.length,
                  itemBuilder: (context, index) => ListTile(
                      leading: Image.asset('${contactslist[index].image}'),
                      title: Text(
                        '${unreadmessageslist[index].name}',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xFF111827),
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '${unreadmessageslist[index].message}',
                        style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      trailing: Text('${unreadmessageslist[index].time}'))),
            )
          ])),
      bottomNavigationBar:
      StatefulBuilder(builder: (context, StateSetter setstate) {
        return BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: const Color(0xFF3366FF),
            unselectedItemColor: const Color(0xFF9CA3AF),
            currentIndex: selectedIndex,
            onTap: (index) {
              setstate(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: 'home',
                  icon: Image.asset('assets/images/home.png'),
                  activeIcon: Image.asset('assets/images/home2.png')),
              BottomNavigationBarItem(
                  label: 'messages',
                  icon: Image.asset('assets/images/message.png'),
                  activeIcon: Image.asset('assets/images/message2.png')),
              BottomNavigationBarItem(
                  label: 'Applied',
                  icon: Image.asset('assets/images/briefcase2.png'),
                  activeIcon: Image.asset('assets/images/briefcase.png')),
              BottomNavigationBarItem(
                  label: 'Saved',
                  icon: Image.asset('assets/images/archive.png'),
                  activeIcon: Image.asset('assets/images/archive2.png')),
              const BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person))
            ]);
      }),
    );
  }
}
