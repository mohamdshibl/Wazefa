import 'package:dotted_border/dotted_border.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/Home/Home_Screen.dart';
import '../../constants/custom_widgets.dart';

class Biodata extends StatelessWidget {
  const Biodata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Biodata',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827)),
            ),
          ],
        ),
        SizedBox(height: 1.h),
        Row(
          children: [
            Text(
              'Fill in your bio data correctly',
              style: TextStyle(fontSize: 10.sp, color: const Color(0xFF6B7280)),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        Row(
          children: [
            Text(
              'Full Name',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827)),
            ),
            Text(
              '*',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF472B)),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        CustomTextFormField(
            image: "assets/images/profile.png", hintText: "Full Name"),
        SizedBox(height: 2.h),
        Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827)),
            ),
            Text(
              '*',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF472B)),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        CustomTextFormField(image: "assets/images/sms.png", hintText: "Email"),
        SizedBox(height: 2.h),
        Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827)),
            ),
            Text(
              '*',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF472B)),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        IntlPhoneField(
          invalidNumberMessage: 'Invalid Number',
          style: TextStyle(fontSize: 14.sp),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
                  borderRadius: BorderRadius.circular(10)),
              prefixIconColor: Colors.black,
              focusColor: Colors.blue,
              hintText: 'Enter Phone Number',
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF9CA3AF),
              )),
        )
      ],
    );
  }
}

class TypeOfWork extends StatefulWidget {
  TypeOfWork({Key? key}) : super(key: key);

  @override
  State<TypeOfWork> createState() => _TypeOfWorkState();
}

class _TypeOfWorkState extends State<TypeOfWork> {
  int index = 0;

  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Type of work',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827)),
            ),
          ],
        ),
        SizedBox(height: 1.h),
        Row(
          children: [
            Text(
              'Fill in your bio data correctly',
              style: TextStyle(fontSize: 10.sp, color: const Color(0xFF6B7280)),
            ),
          ],
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: 100.w,
          height: 50.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 2.h,
            ),
            itemBuilder: (context, index) => ContainerWidget(
              containerFunction: () {
                bool selected = ContainerWidget.groupValue == index;
                if (selected == false) {
                  setState(() {
                    ContainerWidget.groupValue = index;
                  });
                }
              },
              function: (data) {
                setState(() {
                  ContainerWidget.groupValue = data;
                });
              },
              index: index,
            ),
            itemCount: 30,
          ),
        )
      ],
    );
  }
}

class UploadPortofolio extends StatelessWidget {
  const UploadPortofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Upload Portofolio',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF111827)),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Text(
                'Fill in your bio data correctly',
                style:
                    TextStyle(fontSize: 10.sp, color: const Color(0xFF6B7280)),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Text(
                'Upload CV',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF111827)),
              ),
              Text(
                '*',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFF472B)),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Container(
            height: 12.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFD1D5DB),
                )),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/pdf.png',
                    height: 5.h,
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rafif Dian.CV',
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'CV.pdf 300KB',
                            style: TextStyle(
                                fontSize: 9.sp, color: Color(0xFF6B7280)),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Text(
                'Other File',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF111827)),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          DottedBorder(
            dashPattern: [5, 5],
            strokeWidth: 1.5,
            color: Color(0xFF3366FF),
            child: Container(
              height: 30.h,
              width: double.infinity,
              color: Color(0xFFECF2FF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Image.asset(
                      'assets/images/upload.png',
                      height: 9.h,
                      width: 50.w,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Upload your other file',
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    'Max. file size 10 MB',
                    style: TextStyle(fontSize: 10.sp, color: Color(0xFF6B7280)),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    width: 60.w,
                    height: 6.h,
                    color: Colors.transparent,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            backgroundColor: const Color(0xFFD6E4FF)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/export.png',
                              height: 3.h,
                              width: 5.w,
                            ),
                            Text(
                              'Add file',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Color(0xFF3366FF)),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ApplyingSubmited extends StatelessWidget {
  const ApplyingSubmited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 5.h,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'Apply Job',
            style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFF111827),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/succses.png',
            ),
            SizedBox(height:24 ,),
            Center(
              child: Text('Your data has been successfully sent',
                style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height:12 ,),
            Center(
              child: Text('You will get a message from our team,'
                  ' about the announcement of employee acceptance',
                style: TextStyle(fontSize: 12.sp),
              ),
            ),


          ],
        ),
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        child: mainbuttom(
            text: 'Back to home',
            onTap: () {
              navigateTo(context, HomeScreen());
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
