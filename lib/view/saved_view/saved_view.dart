
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../Cubit/app_cubit.dart';

import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';

class Savedjobs extends StatelessWidget {

  Savedjobs({Key? key,}) : super(key: key);
  var list = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
  listener: (context, state) {
    // if (state==GetSavedJobsSuccessState()){
    //   var id = JobsCubit.get(context).id;
    //   JobsCubit.get(context).getSavedJobs(id);}
    },
      builder: (context, state) {

    var cubit = JobsCubit.get(context);
    list = cubit.savedJobsList;
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Saved',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF111827)),
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              /// job saved
              Container(
                height: 5.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F5),
                    border: Border.all(color: const Color(0xFFE5E7EB))),
                child: Center(
                  child: Text(
                    'Job Saved',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6B7280)),
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
              /// list of jobs
              Expanded(
                child: ConditionalBuilder(
                      condition: list.isNotEmpty,
                      builder: (context) => ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 2.h,),
                        itemCount: list.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                           // navigateTo(context, JobDetail(jobsindex:index));
                          },
                          child: customSavedJobsList(list[index], context),
                        ),
                      ),
                      fallback: (context) => const Center(
                          child: CircularProgressIndicator())),

              ),
            ],
          ),
    ),
    );
  },
);
  }
}


Widget customSavedJobsList(list, BuildContext context) {
  return   Column(
    // crossAxisAlignment: CrossAxisAlignment.stretch,
    // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              '${list.name}',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              'Amit.Cairo, Egypt',
              style: TextStyle(
                  fontSize: 10.sp,
                  color: const Color(0xFF374151)),
            ),
            leading: Image.asset(AssetsImages.amitLogo,),
            trailing: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      context: context,
                      builder: (context) =>  SavedBottomSheet());
                },
                icon: Image.asset('assets/images/more.png')),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Posted 2 days ago',
                  style: TextStyle(
                      fontSize: 9.sp,
                      color: const Color(0xFF374151)),
                ),
                Row(
                  children: [
                    Image.asset(AssetsImages.clockIcon,),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      'Be an early applicant',
                      style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF374151)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  }



