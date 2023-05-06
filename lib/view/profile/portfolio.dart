import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/profile/profile.dart';

import '../../constants/utils.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0.sp),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15.sp),
                  child: IconButton(onPressed: () {
                   navigateTo(context, Profile());
                  },
                      icon: Icon(Icons.arrow_back)),
                ) ,
                SizedBox(width: 20.w,) ,
                Text("Portfolio",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ,color: Color(0xff111827)),)
              ],),
              Padding(
                padding:  EdgeInsets.only(left: 30.sp , top: 15.sp , bottom: 20.sp),
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Add portfolio here",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize:20 ,color:Color(0xff111827) ),)),
              ),
              DottedBorder(
                  radius: const Radius.circular(5),
                  strokeWidth: 2,
                  borderPadding: EdgeInsets.all(2),
                  borderType: BorderType.RRect,
                  child: Container(
                    height: 30.h,
                    width: 90.w,
                    color: Color(0xffD6E4FF),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(

                            children: [
                              Image.asset(AssetsImages.export, height: 10.h , width: 70.w,) ,
                              Padding(
                                padding:  EdgeInsets.only(top: 5.sp , bottom: 5.sp),
                                child: const Text("Upload your other file",
                                  style: TextStyle(fontSize:18 ,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                              ) ,
                              const Text("Max. file size 10 MB",
                                style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),) ,

                              Padding(
                                padding:  EdgeInsets.only(left: 10.sp ,right:10.sp , top: 15.sp),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        padding: MaterialStatePropertyAll(EdgeInsets.only(left: 80.sp ,right: 70.sp ,top: 15.sp ,bottom: 15.sp)),
                                        backgroundColor: const MaterialStatePropertyAll(Color(0xffD6E4FF)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>
                                          (RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ,
                                            side: const BorderSide(color: Color(0xff3366FF))))
                                    ),

                                    onPressed: () {    },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AssetsImages.export),
                                    SizedBox(width: 2.w,) ,
                                    Text("Add file",style:
                                    TextStyle(fontWeight:FontWeight.w500 ,
                                        fontSize:14 ,color: Color(0xff3366FF)),),

                                  ],
                                ),
                                ),
                              ),
                            ],
                          ),
                        ) ,
                      ],
                    ),
                  ),
              ) ,
              Padding(
                padding:  EdgeInsets.only(top: 8.sp),
                child: SizedBox(
                    height: 40.h,
                    width: 90.w,
                    child: ListView.separated(itemBuilder: (context, index) => Container(
                      height: 10.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffD1D1D1)
                          ),
                          borderRadius: BorderRadius.circular(15) ,
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 5.sp),
                            child: Image.asset(AssetsImages.pdf),
                          ),
                          SizedBox(
                            width: 120.sp,
                            child: const ListTile(
                              title: Text("UI/UX Designer",
                                style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500 ,
                                    color:Color(0xff111827) ),),
                              subtitle:Text("CV.pdf 300KB",
                                style: TextStyle(fontSize:12 ,fontWeight:FontWeight.w400 ,
                                    color:Color(0xff111827)) ,
                              ),
                            ),
                          ) ,
                          Spacer(),
                          IconButton(onPressed: () {    }
                            , icon: Image.asset(AssetsImages.edit)) ,
                          IconButton(onPressed: () {    },
                              icon: Image.asset(AssetsImages.close))


                        ],

                      ),
                    ) ,
                        separatorBuilder: (context, index) => SizedBox(height: 10.sp,) ,
                        itemCount: 3)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
