import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:jobsque/View/pages/job-detail/job-detail-content.dart';
import 'package:sizer/sizer.dart';

import 'job_details_3_custom_tabs.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [Image.asset('assets/images/save1.png')],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Job Detail',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      // Appbar --------------------------------------------------
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 28.h,
                  width: 60.w,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/twiter.png',
                        height: 8.h,
                        width: 20.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'Senior UI Designer',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Twitter • Jakarta, Indonesia ',
                        style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xFFD6E4FF),
                              ),
                              child: Center(
                                  child: Text(
                                    'Fulltime',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xFF3366FF)),
                                  )),
                            ),
                            Container(
                              height: 5.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xFFD6E4FF),
                              ),
                              child: Center(
                                  child: Text(
                                    'Onsite',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xFF3366FF)),
                                  )),
                            ),
                            Container(
                              height: 5.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xFFD6E4FF),
                              ),
                              child: Center(
                                  child: Text(
                                    'Senior',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xFF3366FF)),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // El Continer elly feh el content beta3 el job -------------------------------------------------------------
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F4F5),
                      borderRadius: BorderRadius.circular(20)),
                  height: 7.h,
                  width: 90.w,
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xFF6B7280),
                    indicator: BoxDecoration(
                      color: Color(0xFF02337A),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    tabs: [
                      SizedBox(
                        height: 5.h,
                        child: Center(
                            child: Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5.h,
                        child: Center(
                            child: Text(
                              'Company',
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5.h,
                        child: Center(
                            child: Text(
                              'People',
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              // el Tab Bar -----------------------------------------------------
              Expanded(
                  child: TabBarView(
                    children: [
                      DescriptionPage(),
                      CompanyPage(),
                      ProfilePage(),
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              minimumSize: Size(80.w, 6.h),
              backgroundColor: const Color(0xFF3366FF)),
          onPressed: () {},
          child: const Text('Apply Now'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
