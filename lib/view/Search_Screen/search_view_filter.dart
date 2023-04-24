import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/colors.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/utils.dart';
import '../../constantts/constants.dart';
import '../Splash/ss.dart';

class SearchViewFilter extends StatelessWidget {
   const SearchViewFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25,
                          )),
                      SizedBox(
                        width: 5.w,
                      ),
                      /// search bar
                      Container(
                        margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.fromLTRB(12, 14, 26, 10),
                        width: 300,
                        height: 52,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Row(
                          children: const[
                            Image(image: AssetImage('assets/images/search.png'),),
                            SizedBox(width: 10,),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Search....',
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:10 ,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12,0,12,0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0)
                                  ),
                                ),
                                context: context,
                                isScrollControlled: true,
                                builder:(context) {
                              return FilterBottomSheet();

                            } );
                          },
                          icon: Image.asset(AssetsImages.filter,),
                        ),
                      ),
                      SizedBox(width: 2.w,),
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {
                                    showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25.0),
                                              topRight: Radius.circular(25.0)
                                          ),
                                        ),
                                        context: context,
                                        isScrollControlled: true,
                                        builder:(context) {
                                          return chipsBottomSheet();

                                        } );
                                  }
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Expanded(
                              flex: 1,
                              child: ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {  }
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Expanded(
                              flex: 1,
                              child: ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {  }
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height:20 ,),
                /// Featuring 120+ jobs
                Container(
                    height: 5.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4F4F5),
                        border: Border.all(color: const Color(0xFFE5E7EB))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Featuring 120+ jobs',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF6B7280)),
                          ),
                        ),
                      ],
                    )
                ),
                /// jobs list
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/images/twiter.png'),),
                      title: Text('Senior UI Designer',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),),
                      subtitle: Text('Twitter • Jakarta, Indonesia ',
                        style: TextStyle(fontSize: 10.sp,),
                        textAlign: TextAlign.start,),
                      trailing: const Image(
                        image: AssetImage('assets/images/save1.png'),),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: EdgeInsets.only(left: 16,top: 0,right: 16,bottom: 10),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Fulltime',
                                    style: TextStyle(fontSize: 10.sp,),),
                                ),
                              ),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Remote',
                                    style: TextStyle(fontSize: 10.sp,),
                                    textAlign: TextAlign.start,),
                                ),),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Design',
                                    style: TextStyle(fontSize: 10.sp,),),
                                ),),

                            ],
                          ),
                          Spacer(),
                          Text('15K/Month'),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: defaultSeparatorContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const Image(
                        image: AssetImage('assets/images/twiter.png'),),
                      title: Text('Senior UI Designer',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),),
                      subtitle: Text('Twitter • Jakarta, Indonesia ',
                        style: TextStyle(fontSize: 10.sp,),
                        textAlign: TextAlign.start,),
                      trailing: const Image(
                        image: AssetImage('assets/images/save1.png'),),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: EdgeInsets.only(left: 16,top: 0,right: 16,bottom: 10),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Fulltime',
                                    style: TextStyle(fontSize: 10.sp,),),
                                ),
                              ),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Remote',
                                    style: TextStyle(fontSize: 10.sp,),
                                    textAlign: TextAlign.start,),
                                ),),

                              SizedBox(width: 6.5,),
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,),
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD6E4FF),
                                ),
                                child: Center(
                                  child: Text('Design',
                                    style: TextStyle(fontSize: 10.sp,),),
                                ),),

                            ],
                          ),
                          Spacer(),
                          Text('15K/Month'),

                        ],
                      ),
                    ),



                  ],
                ),

                // Image.asset('assets/images/blackdash.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
 SizedBox(width: 3.w,),
                              ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {  }
                              ),
                              SizedBox(width: 3.w,),
                              ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down_outlined, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {  }
                              ),
                              SizedBox(width: 3.w,),
                              ActionChip(
                                  label: const Text('Remote'),
                                  labelStyle: const TextStyle(color: Colors.white,fontSize:16),
                                  avatar: const Icon(Icons.arrow_drop_down, color: Colors.white),
                                  backgroundColor: cardPrimaryColor,
                                  onPressed: () {  }
                              ),
*/