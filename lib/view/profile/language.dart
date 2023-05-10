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
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 10.sp),
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)) ,
                  SizedBox(width: 25.w,) ,
                  const Text("Edite Profile",
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500 ,
                        color: Color(0xff111827)
                    ),
                  )
                ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.sp),
                child: SizedBox(
                  height: 80.h,
                  width: 80.w,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return LanguageWidget( language: LanguageModel.lang[index],);
                        } ,
                      separatorBuilder: (context, index) =>const Divider(),
                      itemCount:LanguageModel.lang.length),
                ),
              ) ,
              //Image.asset(AssetsImages.lock),
            ],
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
      height: 8.h,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color(0xffFAFAFA)
      ),
      child: Row(
        children: [
          Image.asset(widget.language!.image) ,
          SizedBox(width: 5.w,) ,
          SizedBox(
              width: 40.w,
              child:Text(widget.language!.name,
                style: const TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16,color: Color(0xff111827)),)),

          SizedBox(width: 13.w),
          Radio ( value: LanguageModel.lang.length,
            groupValue: radio,
            onChanged: ( value) {
              setState(() {
                radio = value! ;
              });
            },)
        ],
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