import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import '../../constantts/constants.dart';
import '../login and register/login_screen.dart';


class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({required this.image,required this.title,required this.body,});

}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //const OnBoardingScreen({Key? key}) : super(key: key);
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(image: 'assets/images/Group 1.png',title: 'Find a job, and start '
        'building your career from now on',body:'Explore over 25,924 available '
        'job roles and upgrade your operator now.'),
    BoardingModel(image: 'assets/images/2.png',title: 'Hundreds of jobs are '
        'waiting for you to join together',body:'Immediately join us and start '
        'applying for the job you are interested in.'),
    BoardingModel(image: 'assets/images/Background.png',title: 'Get the best choice for the '
        'job you ve always dreamed of',body:'The better the skills you have,'
        ' the greater the good job opportunities for you.'),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.all(12),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image:AssetImage('assets/images/Logo.png') ,),
                  Spacer(),
                   TextButton(
                     onPressed: () {
                       navigateToAndStop(context,  LoginScreen());
                       },
                     child: Text('Skip',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.dp,
                    ),
                     ),
                   ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: PageView.builder(
                controller: boardController,
                itemBuilder: (context,index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
                onPageChanged: (int index){
                  if (index == boarding.length-1){
                    setState(() {
                      isLast =true;
                    });
                  }else{
                    setState(() {
                      isLast=false;
                    });
                  }

                },
              ),
            ),
            SizedBox(height: 40,),
            Row (
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue,
                  ),
                ),
                Spacer(),
                FloatingActionButton(onPressed: (){
                  if (isLast){
                    navigateToAndStop(context, LoginScreen());
                  }else{
                    boardController.nextPage
                      (
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn
                    );
                  }

                },
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
Widget buildBoardingItem(BoardingModel board) => Column(
 // crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(child: Image(image:AssetImage(board.image), )),
     SizedBox(height: 30,),
    Text(board.title,
      style:  TextStyle(fontSize: 24.dp,fontWeight: FontWeight.bold),),
    SizedBox(height: 20,),
    Text(board.body,
      style: TextStyle(fontSize: 14,),),
  ],
);
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