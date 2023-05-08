
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/model/jobs_model/jobs_model.dart';
import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';
import '../apply_job/apply_job_view.dart';
import 'job_details_3_custom_tabs.dart';

class JobDetail extends StatelessWidget {
  final int jobsindex;
   var list =[];
   JobDetail( {Key? key, required this.jobsindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = JobsCubit.get(context);

          list = cubit.jobsList;
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              actions: [Image.asset('assets/images/save3.png')],
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              title: Text(
                'Job Detail',
                style: TextStyle(fontSize: 16.sp, color: Colors.black),
              ),
              centerTitle: true,
            ),

            body: DefaultTabController(
              length: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    /// job detail_logo_jobtitle_3c
                    Center(
                      child: SizedBox(
                        height: 28.h,
                        width: 60.w,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/logo_amit.png',
                              height: 8.h,
                              width: 20.w,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              //'dd',
                              '${list[jobsindex].name}',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              '${list[jobsindex].compName}',
                              style: TextStyle(fontSize: 10.sp, color: Colors.black),
                            ),
                            SizedBox(height: 2.h,),
                            Center(
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 4.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color(0xFFD6E4FF),
                                      ),
                                      child: Center(
                                          child: Text(
                                            '${list[jobsindex].jobTimeType}',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xFF3366FF)),
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: 1.w,),
                                  Expanded(
                                    child: Container(
                                      height: 4.h,
                                      width: 20.w,
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
                                  ),
                                  SizedBox(width: 1.w,),
                                  Expanded(
                                    child: Container(
                                      height: 4.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color(0xFFD6E4FF),
                                      ),
                                      child: Center(
                                          child: Text(
                                            '${list[jobsindex].jobLevel}',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xFF3366FF)),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ),
                    /// tab bar
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F5),
                            borderRadius: BorderRadius.circular(20)),
                        height: 5.h,
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
                    /// 3 tabs
                    Expanded(
                      child: TabBarView(
                        children: [
                          DescriptionPage(jobsindex: jobsindex,),
                          CompanyPage(jobsindex: jobsindex,),
                          ProfilePage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: Container(
                color: Colors.transparent,
                child: mainbuttom(text: 'Apply Now', onTap: () { navigateTo(context,JobApplication() ); })
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
        });
  }
}
