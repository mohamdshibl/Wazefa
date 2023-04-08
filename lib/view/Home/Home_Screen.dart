import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Hi, Mohamed Shibl 👋',
                          style: TextStyle(fontSize: 24.dp,),textAlign: TextAlign.start,),
                        SizedBox(height: 8,),
                        Text('Create a better future for yourself here',
                          style:TextStyle(fontSize: 14.dp,color: Colors.grey),),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey ,),
                      borderRadius: BorderRadius.circular(30),
                      //color: Colors.redAccent
                    ),
                    child:Image(image:AssetImage('assets/images/ring.png') ,),

                ),
              ],
            ),
                //SizedBox(height: 18,),
            Container(
             // margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
              padding:  EdgeInsets.fromLTRB(12, 14, 26,10),
              width:  double.infinity,
              height: 52,
              decoration:  BoxDecoration (
                  border:  Border.all(color: Colors.grey ,),
              borderRadius:  BorderRadius.circular(100),
            ),
              child: Row(
                children:const[
                  Image(image:AssetImage('assets/images/search.png') ,),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search....',
                      ),
                    ),
                  ),
                ],
              ),
            ),

                Row(
                  children: [
                    Text('Suggested Job',style: TextStyle(fontSize: 18.dp,),),
                    Spacer(),
                    TextButton(onPressed: () {  } ,
                        child: Text('View all',
                          style: TextStyle(fontSize: 14.dp,),
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 183,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey ,),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                          child: Container(

                          ),
                      ),
                      Flexible(
                        flex: 1,
                          child:Container(

                          ),
                      ),
                      Flexible(
                          flex: 1,
                          child:Container(

                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Recent Job',style: TextStyle(fontSize: 18.dp,),),
                    Spacer(),
                    TextButton(onPressed: () {  } ,
                      child: Text('View all',
                        style: TextStyle(fontSize: 14.dp,),
                      ),
                    ),
                  ],
                ),


    ],
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
//   width: 300.w,
//   height: 183.h,
//   color: Colors.blue.shade900,
//   child: Li,
// ),