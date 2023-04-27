import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import '../../constants/colors.dart';
import '../../constantts/constants.dart';
import '../Search_Screen/search_Screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // HomeScreen({Key? key}) : super(key: key);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// hi and notification
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi, Xman 👋',
                              style: TextStyle(fontSize: 19.sp,),
                              textAlign: TextAlign.start,),
                            SizedBox(height: 8,),
                            Text('Create a better future for yourself here',
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.grey),),
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
                        border: Border.all(color: Colors.grey,),
                        borderRadius: BorderRadius.circular(30),
                        //color: Colors.redAccent
                      ),
                      child:  const Image(
                        image: AssetImage('assets/images/ring.png'),),
                    ),
                  ],
                ),
                /// search bar
                InkWell(
                  onTap: (){
                    navigateTo(context, SearchScreen());
                  },
                  child: Container(
                    // margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(12, 14, 26, 10),
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: const[
                        Image(image: AssetImage('assets/images/search.png'),),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text('Search...'),
                        ),
                      ],
                    ),
                  ),
                ),
                /// Suggested Job
                Row(
                  children: [
                    Text('Suggested Job', style: TextStyle(fontSize: 14.sp,),),
                    Spacer(),
                    TextButton(onPressed: () {   },
                      child: Text('View all',
                        style: TextStyle(fontSize: 11.sp,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                /// card
                Container(
                  height: 183,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(20),
                    color:  cardPrimaryColor,
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: ListTile(
                          leading: const Image(
                            image: AssetImage('assets/images/zoom.png'),),
                          title: Text('Product Designer',
                            style: TextStyle(
                                fontSize: 13.sp, color: Colors.white),
                            textAlign: TextAlign.start,),
                          subtitle: Text('Zoom • United States',
                            style: TextStyle(
                                fontSize: 9.sp, color: Colors.grey),
                            textAlign: TextAlign.start,),
                          trailing: const Image(
                            image: AssetImage('assets/images/save.png'),),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               Container(
                                  width: 87,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(20),
                                    color:Colors.white.withOpacity(0.15),
                                  ),
                                  child: Center(
                                    child: Text('Fulltime',
                                      style: TextStyle(fontSize: 9.sp,color: const Color(0xFFFFFFFF)),),
                                  ),
                                ),
                              SizedBox(width: 6.5,),
                               Container(
                                  width: 87,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(20),
                                    color:Colors.white.withOpacity(0.15) ,
                                  ),
                                  child: Center(
                                    child: Text('Remote',
                                      style: TextStyle(fontSize: 9.sp,color: Color(0xFFFFFFFF)),
                                      textAlign: TextAlign.start,),
                                  ),),

                              SizedBox(width: 6.5,),
                              Container(
                                  width: 87,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.15),
                                  ),
                                  child: Center(
                                    child: Text('Design',
                                      style: TextStyle(fontSize: 9.sp,color: Color(0xFFFFFFFF)),),
                                  ),),

                            ],
                          ),
                        ),

                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text('\$12K-15K/Month',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                  textAlign: TextAlign.start,
                                ),
                                Spacer(),
                                // apply job
                                InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      width: 96,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey,),
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xFF3366FF),
                                      ),
                                      child: Center(
                                        child: Text('Apply now',
                                          style: TextStyle(fontSize: 9.sp,
                                              color: Colors.white),),
                                      ),
                                    ),
                                ),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                /// recent job & view all
                Row(
                  children: [
                    Text('Recent Job', style: TextStyle(fontSize: 14.sp,),),
                    Spacer(),
                    TextButton(onPressed: () {},
                      child: Text('View all',
                        style: TextStyle(fontSize: 11.sp,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                /// jobs List
                Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/images/twiter.png'),),
                      title: Text('Senior UI Designer',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),),
                      subtitle: Text('Twitter • Jakarta, Indonesia ',
                        style: TextStyle(fontSize: 9.sp,),
                        textAlign: TextAlign.start,),
                      trailing: Image(
                        image: AssetImage('assets/images/save1.png'),),
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Fulltime',
                                    style: TextStyle(fontSize: 9.sp,),),
                                ),
                              ),

                              SizedBox(width: 6.5,),
                              Container(
                                width:70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Remote',
                                    style: TextStyle(fontSize: 9.sp,),
                                    textAlign: TextAlign.start,),
                                ),),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Design',
                                    style: TextStyle(fontSize: 9.sp,),),
                                ),),

                            ],
                          ),
                        ),
                        Spacer(),
                        Text('\$15K/Month'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                ///  Separator line custom
                defaultSeparatorContainer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/images/twiter.png'),),
                      title: Text('Senior UI Designer',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),),
                      subtitle: Text('Twitter • Jakarta, Indonesia ',
                        style: TextStyle(fontSize: 9.sp,),
                        textAlign: TextAlign.start,),
                      trailing: Image(
                        image: AssetImage('assets/images/save1.png'),),
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Fulltime',
                                    style: TextStyle(fontSize: 9.sp,),),
                                ),
                              ),

                              SizedBox(width: 6.5,),
                              Container(
                                width:70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Remote',
                                    style: TextStyle(fontSize: 9.sp,),
                                    textAlign: TextAlign.start,),
                                ),),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Design',
                                    style: TextStyle(fontSize: 9.sp,),),
                                ),),

                            ],
                          ),
                        ),
                        Spacer(),
                        Text('15K/Month'),
                      ],
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
      ///  Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: const Color(0xFF3366FF),
          unselectedItemColor: const Color(0xFF9CA3AF),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: 'home',
                icon: Image.asset('assets/images/home.png'),
                activeIcon: Image.asset('assets/images/home2.png')),
            BottomNavigationBarItem(
                label: 'messages',
                icon: Image.asset('assets/images/message.png'),
                activeIcon: Image.asset('assets/images/message2.png')),
            BottomNavigationBarItem(
                label: 'Applied',
                icon: Image.asset('assets/images/briefcase2.png'),
                activeIcon: Image.asset('assets/images/briefcase.png')),
            BottomNavigationBarItem(
                label: 'Saved',
                icon: Image.asset('assets/images/archive.png'),
                activeIcon: Image.asset('assets/images/archive2.png')),
            const BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person)
            ),
          ]
      ),
    );
  }
  }
