import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/constants.dart';
import 'package:wazefa/view/login%20and%20register/workLocation.dart';

import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';

class WorkType extends StatefulWidget {
 // static const String routName="Work_Type";
  const WorkType({Key? key}) : super(key: key);

  @override
  State<WorkType> createState() => _WorkType();
}

class _WorkType extends State<WorkType> {
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
               Text("What type of work are you interested in?",
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              SizedBox(height: 2.h,),
               Text("Tell us what you’re interested in "
                    "so we can customise the app for your needs.",
                  style: TextStyle(fontSize:11.sp),
               ),
              SizedBox(height: 3.h,),
              Expanded(
                child: GridView.builder
                  (
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: Works.worksList.length,
                    gridDelegate:
                     SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: .5.h,
                    ),
                    itemBuilder: (context, index)
                    {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){

                              setState(() {
                                Works.worksList[index].selected =
                                !Works.worksList[index].selected;
                                // isPressed= Works.worksList[index].selected;
                                isPressed=!isPressed;
                                print("done");

                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: SizedBox(
                                //height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                height:16.h,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  //width: 20.w,
                                  alignment: Alignment.topLeft,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius:BorderRadius.circular(12),
                                    ///////////////////
                                    color: Works.worksList[index].selected? const Color(0xFfD6E4FF): Colors.white,
                                    border: Border.all
                                      (color: Works.worksList[index].selected? const Color(0xFf3366FF): const Color(0xFfD1D5DB)),

                                  ),
                                  child: Align(alignment: Alignment.topLeft,
                                    child: SelectWork(Works.worksList[index]),

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }//item builder
                ),
              ),
             // SizedBox(height: 1.h,),
              mainbuttom(text: 'Next',
                onTap: () {
                navigateToAndStop(context, PreferredLocation());
                  setState(() {
                    if(isPressed)
                    {

                    }
                  });

                },),
            ],
          ),
        ),
      ),
    );
  }
}

class Works{
  final String image;
  final String text;
  bool selected;
  Works(this.image,{ required this.text,required this.selected});
  static List<Works>worksList= <Works>
  [
    Works(AssetsImages.searchIcon,  text:"UI/UX",selected: false),
    Works(AssetsImages.saveRounded, text:"Illustrator Designer",selected: false),
    Works(AssetsImages.saveRounded, text:"Developer",selected: false),
    Works(AssetsImages.saveRounded, text:"Management",selected: false),
    Works(AssetsImages.saveRounded, text:"Information Technology",selected: false),
    Works(AssetsImages.saveRounded, text:"Research Analysis",selected: false),
  ];

}

class SelectWork extends StatelessWidget{
  Works? works;
  SelectWork(this.works, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("${works?.image}",),
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 2.h ,),
          Text("${works?.text}",style: TextStyle(
            fontSize: 14.sp,),),
        ],
    );
  }
}
