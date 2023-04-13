import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../constants/utils.dart';

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
                SizedBox(height:20 ,),
                Row(
                  children: [
                    Image.asset(AssetsImages.splashLogo,),
                  ],
                ),
                SizedBox(height:20 ,),
                /// popular searches
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
                            'Recent searches',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF6B7280)),
                          ),
                        ),
                      ],
                    )
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/clock.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 14.dp,),
                  ),
                  trailing: const Image(
                    image: AssetImage('assets/images/close-circle.png'),),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/clock.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 14.dp,),
                  ),
                  trailing: const Image(
                    image: AssetImage('assets/images/close-circle.png'),),
                ),
                /// recent searches
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
                          'Popular searches',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6B7280)),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/search-status.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 14.dp,),
                  ),
                  trailing: const Image(
                    image: AssetImage('assets/images/ar.png'),),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/search-status.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 14.dp,),
                  ),
                  trailing:  Image(
                    image: AssetImage('assets/images/ar.png'),
                  ),
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
