import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';
import '../apply_job/apply_job_view.dart';

class RejectedTap extends StatelessWidget {
  const RejectedTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child:Image.asset(AssetsImages.dataIlustration,
              height: 35.h,
              width: 50.w,
            ),
          ),
          Text(
            'No applications were rejected',
            style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff111827),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 1.h),
          Center(
            //padding: const EdgeInsets.only(left: 50.0, right: 30.0),
            child: Text(
              'If there is an application that '
                  'is rejected by the company it will appear here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.sp,
                color: Color(0xff6B7280),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveTap extends StatelessWidget {
  const ActiveTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    '3 Jobs',
                    style: TextStyle(color: Color(0xff6B7280), fontSize: 9.sp),
                  )
                ],
              ),
            ),
            color: Color(0xffE5E7EB),
            height: 5.h,
            width: 100.w,
          ),
          SizedBox(
            height: 1.h,),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: 5.h,
                thickness: 1.5,
                color: Color(0xFFE5E7EB),
              ),
              itemBuilder: (context, index) => GestureDetector(
                child: ActiveItemList(
                  activeItem: ActiveItem.activeItem[index],
                  index: index,
                ),
                onTap: (){navigateTo(context,const JobApplication());},
              ),
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}

class ActiveItemList extends StatelessWidget {
  int index;
  ActiveItem activeItem;
  ActiveItemList({super.key, required this.activeItem, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            leading: Image.asset(activeItem.logo,),
            title: Text(
                activeItem.job,
                style: TextStyle(
                    color: Color(0xff111827),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold),
              ),
            subtitle:Text(
                      activeItem.description,
                      style: TextStyle(color: Color(0xff374151), fontSize: 9.sp),
                    ) ,
            trailing: Image.asset(
              activeItem.image,
              height: 5.h,
              width: 10.w,
            ) ,
          ),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Container(
                height: 4.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFD6E4FF),
                ),
                child: Center(
                    child: Text(
                      'Fulltime',
                      style: TextStyle(
                          fontSize: 10.sp, color: const Color(0xFF3366FF)),
                    )),
              ),
              SizedBox(
                width: 2.w,
              ),
              Container(
                height: 4.h,
                width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFD6E4FF),
                ),
                child: Center(
                    child: Text(
                      'Remote',
                      style: TextStyle(
                          fontSize: 10.sp, color: const Color(0xFF3366FF)),
                    )),
              ),
              Spacer(),
              Text(
                'Posted 2 days ago',
                style: TextStyle(fontSize: 9.sp, color: (Color(0xff374151))),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: 15.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomStepper(),
            ),
          ),
        ],
      );
  }
}

class ActiveItem {
  String logo;
  String job;
  String description;
  String image;

  ActiveItem(this.logo, this.job, this.description, this.image);
  static List<ActiveItem> activeItem = [
    ActiveItem(
        AssetsImages.spectrumLogo, 'UI/UX Designer',
        'Spectrum • Jakarta, Indonesia', AssetsImages.saveRounded),
    ActiveItem(
        AssetsImages.spectrumLogo,
        'UI/UX Designer',
        'Discord • Jakarta, Indonesia',
        AssetsImages.saveRounded),
    ActiveItem(
        AssetsImages.twitterLogo,
        'UI/UX Designer',
        'Invision • Jakarta, Indonesia',
        AssetsImages.searchIcon),
  ];
}
