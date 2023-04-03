import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';


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
        'waiting for you to join togethe',body:'Immediately join us and start '
        'applying for the job you are interested in.'),
    BoardingModel(image: 'assets/images/Background.png',title: 'Get the best choice for the '
        'job you ve always dreamed of',body:'The better the skills you have,'
        ' the greater the good job opportunities for you.'),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Image(image:AssetImage('assets/images/Logo.png') ,),
        leadingWidth: 100,
        actions: [
          TextButton(onPressed: (){
            //navigateToAndStop(context,  LoginScreen());
          }, child:
          const Text('Skip',
            style: TextStyle(color: Colors.grey)
            ,)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
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
            //SizedBox(height: 40,),
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
                    //navigateToAndStop(context, LoginScreen());
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
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Expanded(child: Image(image:AssetImage(board.image), )),
    const SizedBox(height: 30,),
    Text(board.title,
      style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
    SizedBox(height: 20,),
    Text(board.body,
      style: const TextStyle(fontSize: 14,),),
  ],
);
