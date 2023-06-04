import 'dart:io';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/custom_widgets.dart';

import '../../constants/constants.dart';
import '../../shared/local/shared_pref.dart';
import '../login and register/login_screen.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //const OnBoardingScreen({Key? key}) : super(key: key);
  var boardController = PageController();
  bool isLast = false;
  // String text= 'Next';
   int current=0;


  void _submit(){
    MyCache.saveData(key: 'boarding', value: true).then((value) {
      if (value == true){
        navigateToAndStop(context,  LoginScreen());
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Expanded(
            //   flex: 1,
            //   child:
        Padding(
                padding:  const EdgeInsets.only(left: 20,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image:AssetImage('assets/images/Logo.png') ,),
                     TextButton(
                       onPressed: () {
                         _submit();
                         },
                       child: Text('Skip',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                      ),
                       ),
                     ),
                  ],
                ),
              ),
            //),
             Expanded(
              // flex: 8,
               child: PageView.builder(
                      controller: boardController,
                      itemBuilder: (context,index) =>
                          buildBoardingItem(boarding[index]),
                      itemCount: boarding.length,
                      onPageChanged: (int index){
                        if (index == boarding.length-1){
                          setState(() {
                            isLast =true;
                            current = index;
                          });
                        }else{
                          setState(() {
                            isLast=false;
                          });
                        }

                      },
                    ),

             ),
            SizedBox(height: 10,),
            // Expanded(
            //   flex: 1,
            //   child:
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                    effect: const SlideEffect(),
                  ),
                ],
              ),
           // ),
           //  Expanded(
           //    flex: 1,
           //      child:
            SizedBox(height: 3.h,),
            mainbuttom(
              text: (current == boarding.length - 1) ? "Get Started" : "Next",
              onTap: () {
                if (isLast) {
                  _submit();
                }

                  boardController.nextPage(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
              },
            )

            // ),
          ],
        ),
      ),
    );
  }
}
List<BoardingModel> boarding = [
  BoardingModel(image: 'assets/images/back1.png',title: 'Find a job, and start '
      'building your career from now on',body:'Explore over 25,924 available '
      'job roles and upgrade your operator now.'),
  BoardingModel(image: 'assets/images/back2.png',title: 'Hundreds of jobs are '
      'waiting for you to join together',body:'Immediately join us and start '
      'applying for the job you are interested in.'),
  BoardingModel(image: 'assets/images/back3.png',title: 'Get the best choice for the '
      'job you ve always dreamed of',body:'The better the skills you have,'
      ' the greater the good job opportunities for you.'),
];
Widget buildBoardingItem(BoardingModel board) => Column(
  children: [
    // Expanded(
    //   //flex: 5,
    //     child:
        Image(image:AssetImage(board.image),
        fit: BoxFit.cover,)
//)
,
    // const SizedBox(height: 30,),
    // Expanded(
    //   flex: 2,
    //   child:
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(board.title,
          style:  TextStyle(fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
   // ),
    // Expanded(
    //   flex: 1,
    //   child:
   Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(board.body,
          style: TextStyle(fontSize: 11.sp,),
        ),
      ),
//),
  ],
);



class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({required this.image,required this.title,required this.body,});

}


// appBar: AppBar(
// backgroundColor: Colors.white,
// elevation: 0,
// leading: const Image(image:AssetImage('assets/images/Logo.png') ,),
// leadingWidth: 100,
// actions: [
// TextButton(onPressed: (){
// navigateToAndStop(context,  LoginScreen());
// }, child:
// const Text('Skip',
// style: TextStyle(color: Colors.grey)
// ,)
// ),
// ],
// ),