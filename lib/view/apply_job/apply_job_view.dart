import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/colors.dart';
import '../../constants/custom_widgets.dart';
import 'apply_job_custom_steper.dart';


class JobApplication extends StatefulWidget {
  const JobApplication({Key? key}) : super(key: key);

  @override
  State<JobApplication> createState() => _JobApplicationState();
}

class _JobApplicationState extends State<JobApplication> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 5.h,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text('Apply Job',
            style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFF111827),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomStepper(),
              SizedBox(height: 2.h),
              currentStep == 0
                  ? Biodata()
                  : currentStep == 1
                  ? TypeOfWork()
                  : currentStep == 2
                  ? UploadPortofolio()
                  : Text('')
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              minimumSize: Size(90.w, 6.5.h),
              backgroundColor: const Color(0xFf3366FF)),
          onPressed: () {
            setState(() {
              currentStep++;
              if(currentStep>3){
                navigateTo(context, const ApplyingSubmited());
              }
            });
          },
          child: currentStep == 0 ? Text('Next', style: TextStyle(fontSize: 10.sp),)
              : currentStep == 1 ? Text('Next', style: TextStyle(fontSize: 10.sp),)
              : currentStep == 2 ? Text('Submit', style: TextStyle(fontSize: 10.sp),)
              : Text('Submit', style: TextStyle(fontSize: 10.sp),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  },
);
  }
}
