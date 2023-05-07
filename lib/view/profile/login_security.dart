import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/profile/profile.dart';

import '../../constants/utils.dart';

class LoginAndSecurity extends StatelessWidget {
  const LoginAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () { navigateTo(context, Profile());
                      },
                    icon: const Icon(Icons.arrow_back_rounded,),
                ),
                SizedBox(width: 20.w,),
                const Text(
                  "Login and security",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff111827)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.sp),
              child: Container(
                height: 5.h,
                width: 120.w,
                decoration: const BoxDecoration(color: Color(0xffE5E7E4)),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.sp, left: 20.sp),
                  child: const Text(
                    "Accont access",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6B7280)),
                  ),
                ),
              ),
            ),
            Expanded(
              child:SizedBox(
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              // if (index == 0) {
                              //
                              // } else if (index == 1) {
                              //
                              // } else if (index == 2) {
                              //
                              // } else if (index == 3) {
                              //
                              // } else if (index == 4) {
                              //
                              //}
                            },
                            child: ShapeAccess(
                              accessModel: AccessModel.data[index],
                            ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: AccessModel.data.length),
                ),
                // Padding(
                //   padding: EdgeInsets.only(right: 55.sp, top: 22.sp),
                //   child: const Align(
                //     alignment: Alignment.topRight,
                //     child: Text(
                //       "rafifdian12@gmail.com",
                //       style: TextStyle(
                //           fontWeight: FontWeight.w400,
                //           fontSize: 14,
                //           color: Color(0xff6B7280)),
                //     ),
                //   ),
                // ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Padding(
                //     padding: EdgeInsets.only(right: 55.sp, top: 249.sp),
                //     child: const Text(
                //       "Non active",
                //       style: TextStyle(
                //           fontWeight: FontWeight.w400,
                //           fontSize: 14,
                //           color: Color(0xff6B7280)),
                //     ),
                //   ),
                // ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShapeAccess extends StatelessWidget {
  AccessModel accessModel ;
  ShapeAccess({super.key , required this.accessModel}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      decoration: const BoxDecoration(
          color: Color(0xffFAFAFA)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Row(
          children: [
            SizedBox(
                child:Text(accessModel.name,
                  style: const TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,color: Color(0xff111827)),)
            ),
            Spacer(),
            IconButton(onPressed: () {  },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
class AccessModel {

  String name ;


  AccessModel({required this.name}) ;

  static List<AccessModel> data = [
    AccessModel(name: "Email address",),
    AccessModel(name: "Phone number",),
    AccessModel(name: "Change password",),
    AccessModel(name: "Two-step verification",),
    AccessModel(name: "Face ID",),
  ];
}


