
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../Cubit/app_cubit.dart';

import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';

class Savedjobs extends StatelessWidget {
  late Savedjobsmodel? model;
  int selectedindex = 0;
  Savedjobs({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 25,
                      )),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Saved',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF111827)),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              /// job saved
              Container(
                height: 5.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F5),
                    border: Border.all(color: const Color(0xFFE5E7EB))),
                child: Center(
                  child: Text(
                    '12 Job Saved',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6B7280)),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              /// list of jobs
              Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      height: 3,
                      thickness: 2,
                      endIndent: 25,
                      indent: 25,
                    ),
                    itemCount: savedlist.length,
                    itemBuilder: (context, index) {
                      return SavedJobCard(
                        savedmodel: savedlist[index],
                      );
                    }),
              ),

          ],),
    ),
    );
  },
);
  }
}
class Savedjobsmodel {
  String? title;
  String? subtitle;
  String? icon;
  String? posttime;
  Savedjobsmodel({
    this.title,
    this.subtitle,
    this.icon,
    this.posttime,
  });
}

List<Savedjobsmodel> savedlist = [
  Savedjobsmodel(
      title: 'Senior UI Designer',
      subtitle: 'Twitter • Jakarta, Indonesia ',
      icon: 'assets/images/twiter.png',
      posttime: 'Posted 2 days ago'),
  Savedjobsmodel(
      title: 'UI Designer',
      subtitle: 'Spectrum • Jakarta, Indonesia ',
      icon: 'assets/images/twiter.png',
      posttime: 'Posted 2 days ago'),
  Savedjobsmodel(
      title: 'Senior UI Designer',
      subtitle: 'VK • Yogyakarta, Indonesia ',
      icon: 'assets/images/twiter.png',
      posttime: 'Posted 2 days ago'),
  Savedjobsmodel(
      title: 'Senior UX Designer',
      subtitle: 'Discord • Jakarta, Indonesia ',
      icon: 'assets/images/zoom.png',
      posttime: 'Posted 2 days ago'),
  Savedjobsmodel(
      title: 'Junior UI Designer',
      subtitle: 'Invision • Jakarta, Indonesia ',
      icon: 'assets/images/zoom.png',
      posttime: 'Posted 2 days ago')
];



class SavedJobCard extends StatelessWidget {
  Savedjobsmodel savedmodel;
  SavedJobCard({
    Key? key,
    required this.savedmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
      width: 300.w,
      child: Column(
        children: [
          ListTile(
            title: Text(
              '${savedmodel.title}',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              '${savedmodel.subtitle}',
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF374151)),
            ),
            leading: Image.asset('${savedmodel.icon}'),
            trailing: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      context: context,
                      builder: (context) => const Bottomsheetbutton());
                },
                icon: Image.asset('assets/images/more.png')),
          ),
          Row(
            children: [
              SizedBox(
                width: 4.w,
              ),
              Text(
                '${savedmodel.posttime}',
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF374151)),
              ),
              SizedBox(
                width: 35.w,
              ),
              Image.asset('assets/images/clock.png'),
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
          )
        ],
      ),
    );
  }
}

// contacs page card
// class ContactsCard extends StatelessWidget {
//   Contacts contacsmodel;
//   ContactsCard({
//     Key? key,
//     required this.contacsmodel,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => Chatpage()));
//         },
//         leading: Image.asset('${contacsmodel.image}'),
//         title: Text(
//           '${contacsmodel.name}',
//           style: TextStyle(
//               fontSize: 14.sp,
//               color: const Color(0xFF111827),
//               fontWeight: FontWeight.w500),
//         ),
//         subtitle: Text(
//           '${contacsmodel.message}',
//           style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
//         ),
//         trailing: Text('${contacsmodel.time}'));
//   }
// }
