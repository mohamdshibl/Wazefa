import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';
import '../../model/messages_models/contacts_model.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({super.key});
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
       listener: (context, state) {  },
      builder: (context, state) {
        var cubit = JobsCubit.get(context);

        return Scaffold(
      // appBar:AppBar(
      //   backgroundColor: Colors.white,
      //   //iconTheme: IconThemeData(color: Colors.black),
      //   elevation: 0,
      //   title: Text(
      //     'Messages',
      //     style: TextStyle(fontSize: 16.sp, color: Colors.black),
      //   ),
      //   centerTitle: true,
      // ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Messsages',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF111827)),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
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
          SizedBox(height: 2.h,),
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
  },
);

  }}