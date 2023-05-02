import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';
import '../../model/messages_models/contacts_model.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.fromLTRB(12, 14, 26, 10),
                  width: 300,
                  height: 52,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/images/search.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search....',
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
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
              child: Image.asset(
                AssetsImages.filter_rounded,
              ),
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
      ),
      ),
    );
  }}