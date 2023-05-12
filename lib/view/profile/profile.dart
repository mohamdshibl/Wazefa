

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/profile/portfolio.dart';

import '../../constants/utils.dart';
import '../notifications/notification.dart';
import 'edit_profile.dart';
import 'language.dart';
import 'login_security.dart';
import 'nitifications.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 160 ;
  final double profileHeight = 120 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD6E4FF),
        iconTheme: const IconThemeData(color: Color(0xffD6E4FF),),
        elevation: 0,
        actions: [
          IconButton(
            icon: Image.asset(AssetsImages.logout,),
            onPressed: () {  },
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTobProfile(),
            const ListTile(
              title: Text(
                "Rafi Dian Axelingga",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827),
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "Senior UI/UX Designer",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff6B7280)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.sp, right: 25.sp),
              child: Container(
                width: 140.w,
                height: 12.h,
                decoration: const BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 10.h,
                      width: 22.w,
                      child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Column(
                            children: [
                              Text(
                                "Applied",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff6B7280)),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.h,),
                              Text(
                                "46",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    color: const Color(0xff111827)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                      ),
                    ),
                    Container(height: 7.h,width:.3.w ,color: Colors.grey,),
                    SizedBox(
                      height: 10.h,
                      width: 22.w,
                      child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Column(
                            children: [
                               Text(
                                "Reviewed",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff6B7280)),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.h,),
                               Text(
                                "23",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    color: const Color(0xff111827)),
                                textAlign: TextAlign.center,
                              ),

                            ],
                          )
                      ),
                    ),
                    Container(height: 7.h,width:.3.w ,color: Colors.grey,),
                    SizedBox(
                      height: 10.h,
                      width: 22.w,
                      child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Column(
                            children: [
                               Text(
                                "Contacted",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff6B7280)),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 2.h,),
                               Text(
                                "46",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    color: const Color(0xff111827)),
                                textAlign: TextAlign.center,
                              ),

                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 10.sp ,bottom: 10.sp, left: 24 ,right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {   },
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 25.sp ,right: 25.sp  ),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text("I'm Rafif Dian Axelingga,"
                    " I’m UI/UX Designer,"
                    " I have experience designing UI Design for approximately 1 year. "
                    "I am currently joining the Vektora studio team based in Surakarta, "
                    "Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                  style: TextStyle(fontWeight:FontWeight.w400 ,
                    fontSize:14 ,color: Color(0xff6B7280),),maxLines: 6,),
              ),
            ),
            // general
            Padding(
              padding:  EdgeInsets.only(top: 20.sp,bottom: 20.sp),
              child: Container(
                height: 5.h,
                width: 120.w,
                decoration: const BoxDecoration(
                    color: Color(0xffE5E7E4)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 8.sp , left: 20.sp),
                  child: const Text("General",style:
                  TextStyle(fontSize:14 ,fontWeight:FontWeight.w500 ,color: Color(0xff6B7280)),),
                ),
              ),
            ) ,
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          if( index == 0){
                            navigateTo(context, EditProfile(),);
                          } else if (index == 1){
                            navigateTo(context, Portfolio(),);
                          }else if (index == 2){
                            navigateTo(context, Language(),);
                          }else if (index == 3){
                            navigateTo(context, NotificationView(),);
                          }else if (index == 4){
                            navigateTo(context, LoginAndSecurity(),);
                          }

                        },
                        child: Shapegeneral(generalModel: GeneralModel.data[index]));

                  } ,
                  separatorBuilder: (context, index) =>const Divider(),
                  itemCount:GeneralModel.data.length),
            ) ,
            // others
            Padding(
              padding:  EdgeInsets.only(top: 5.sp,bottom: 24),
              child: Container(
                height: 5.h,
                width: 120.w,
                decoration: const BoxDecoration(
                    color: Color(0xffE5E7E4)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 8.sp , left: 20.sp),
                  child: const Text("Others",style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w500 ,color: Color(0xff6B7280)),),
                ),
              ),
            ) ,
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {

                        },
                        child: Shapeothers(othersModel: OthersModel.data[index],));
                    } ,
                  separatorBuilder: (context, index) =>const Divider()
                  , itemCount:OthersModel.data.length),
            ) ,
          ],
        ),
      ),
    );
  }


  Widget buildTobProfile() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children:
      [
        Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage()
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),

      ],
    );
  }
  Widget buildCoverImage() =>
      Container(
        color: Colors.grey,
        width: double.infinity,
        height: coverHeight,
        child: Image(image: AssetImage('assets/images/rect.png'),
          fit: BoxFit.cover, height: coverHeight,),

      );


  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight/2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage:  AssetImage('assets/images/ProfileImage.png'),
  );


}

class Shapegeneral extends StatelessWidget {
  GeneralModel? generalModel ;


  Shapegeneral({super.key , required this.generalModel });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 13.w,
      decoration: const BoxDecoration(
          color: Color(0xffFAFAFA)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xffD6E4FF),
              maxRadius: 18.sp,
              child: Image.asset(generalModel!.image),
            ) ,
            SizedBox(width: 5.w,) ,
            SizedBox(
                width: 40.w,
                child:Text(generalModel!.name,
                  style: const TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,color: Color(0xff111827)),)
            ),
            Spacer(),
            IconButton(onPressed: () {

              }, icon: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}

class Shapeothers extends StatelessWidget {
  OthersModel? othersModel ;

  Shapeothers({super.key , required this.othersModel });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
         // color: Color(0xffD6E4FF)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Row(
          children: [
            SizedBox(
                width: 58.w,
                child:Text(othersModel!.name,
                  style: const TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 16,color: Color(0xff111827)),)),
            Spacer(),
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
class GeneralModel {
  String image ;
  String name ;

  GeneralModel({required this.image ,required this.name}) ;

  static List<GeneralModel> data = [
    GeneralModel(
      image: (AssetsImages.profile),
      name: "Edit Profile",
    ),
    GeneralModel(
      image: (AssetsImages.portfolio),
      name: "Portfolio",
    ),
    GeneralModel(
      image: (AssetsImages.global),
      name: "Langauge",
    ),
    GeneralModel(
      image: (AssetsImages.notification),
      name: "Notification",
    ),
    GeneralModel(
      image: (AssetsImages.lock),
      name: "Login and security",
    ),
  ];

}

class OthersModel {

  String name ;

  OthersModel({required this.name}) ;

  static List<OthersModel> data = [
    OthersModel(name: "Accesibility",),
    OthersModel(name: "Help Center",),
    OthersModel(name: "Terms & Conditions",),
    OthersModel(name: "Privacy Policy",),
  ];

}

