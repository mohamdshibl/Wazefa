import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/profile/profile.dart';

import '../../constants/utils.dart';

class EditProfile extends StatelessWidget {

  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                IconButton(onPressed: () {
                 navigateTo(context, Profile());
                },
                    icon: const Icon(Icons.arrow_back)) ,
                SizedBox(width: 25.w,) ,
                const Text("Edite Profile",
                  style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ,
                      color: Color(0xff111827)),)
              ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.sp),
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Container(
                    width: 30.0.w,
                    height: 15.0.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image:  const DecorationImage(
                        image: AssetImage(AssetsImages.profile),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0.w,
                      ),
                    ),
                    child:IconButton(onPressed: () {

                    },
                        icon: const Icon(Icons.camera_alt_outlined,color: Colors.white,)) ,
                  ),
                ),
              ) ,
              TextButton(onPressed: () {

              },
                  child: const Text("Change Photo",
                    style: TextStyle(fontWeight:FontWeight.w500 ,
                        fontSize:16 ,color: Color(0xff3366FF)),)
              ),

              SizedBox(
                height: 55.h,
                child: ListView(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 7.w),
                      child: const Text("Name",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ,color: Color(0xff9CA3AF)),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 15.sp , left: 15.sp ,top: 3.sp ,bottom: 3.sp),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter Username";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,

                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          hintText: "Username",

                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 7.w),
                      child: Text("Bio",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ,color: Color(0xff9CA3AF)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.sp , left: 15.sp ,top: 3.sp ,bottom: 3.sp),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter Bio";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,

                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          hintText: "Bio",

                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 7.w),
                      child: Text("Address",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ,color: Color(0xff9CA3AF)),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.sp , left: 15.sp ,top: 3.sp ,bottom: 3.sp),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter Username";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          border:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          hintText: "Address",

                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 7.w),
                      child: const Text("No.Handphone",
                        style: TextStyle(fontSize: 16,
                            fontWeight:FontWeight.w500 ,color: Color(0xff9CA3AF)),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 15.sp , left: 15.sp ,top: 3.sp ,bottom: 3.sp),
                      child: IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border:  OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                  ],
                ),

              ),
              mainbuttom(text: 'Save', onTap: (){})

            ],
          ),
        ),
      ),
    );
  }
}
