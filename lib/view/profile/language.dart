import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/profile/profile.dart';

import '../../constants/utils.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 10.sp),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios_new_outlined)
                      ) ,
                    SizedBox(width: 25.w,) ,
                     Text("Edite Profile",
                      style: TextStyle(fontSize: 15.sp,fontWeight:FontWeight.w500 ,
                          color: Color(0xff111827)
                      ),
                    )
                  ],),
                ),
                Padding(
                  padding:  EdgeInsets.all(20),
                  child: SizedBox(
                    height: 90.h,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return LanguageWidget( language: LanguageModel.lang[index],);
                          } ,
                        separatorBuilder: (context, index) =>const Divider(),
                        itemCount:LanguageModel.lang.length),
                  ),
                ) ,
              ],
            ),
          ),
        )
    );
  }
}


class LanguageWidget extends StatefulWidget {

  LanguageModel? language ;
  LanguageWidget({super.key , required this.language });

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();

}

class _LanguageWidgetState extends State<LanguageWidget> {
  int radio = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: Image.asset(widget.language!.image) ,
        title: Text(widget.language!.name,),
        trailing:Radio (
          value: LanguageModel.lang.length,
          groupValue: radio,
          onChanged: ( value) {
            setState(() {
              radio = value! ;
            });
          },) ,
      ),
    );
  }
}

class LanguageModel {

  String image ;
  String  name ;
  LanguageModel ({required this.image , required this.name}) ;

  static List<LanguageModel> lang = [

    LanguageModel(
        image: (AssetsImages.England),
        name: "English"
    ) ,
    LanguageModel(image: (AssetsImages.Indonesia),
        name: "Indonesia") ,

    LanguageModel(image: (AssetsImages.SaudiArabia),
        name: "Arabic") ,

    LanguageModel(image: (AssetsImages.China),
        name: "Chinese") ,

    LanguageModel(image: (AssetsImages.Indonesia),
        name: "Dutch") ,

    LanguageModel(image: (AssetsImages.France),
        name: "French") ,

    LanguageModel(image: (AssetsImages.Germany),
        name: "German") ,

    LanguageModel(image: (AssetsImages.Japan),
        name: "Japanese") ,

    LanguageModel(image: (AssetsImages.SouthKorea),
        name: "Korean") ,

    LanguageModel(image: (AssetsImages.Portugal),
        name: "Portuguese") ,

  ] ;

}