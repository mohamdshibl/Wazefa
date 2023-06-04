import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';
import '../../model/messages_models/contacts_model.dart';
import '../../model/messages_models/unread_messgae_model.dart';
import 'messages.dart';



class UnreadMessages extends StatelessWidget {
   UnreadMessages({super.key});
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              // search bar
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
                        Image(image: AssetImage(AssetsImages.searchIcon,),),
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
                      builder: (context) => const MessagesBottomSheet());
                },
                child: Image.asset(AssetsImages.filter_rounded,),
              )
            ]),
            SizedBox(
              height: 2.h,
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
          ],
    ),
    ),
    );

  }
}
