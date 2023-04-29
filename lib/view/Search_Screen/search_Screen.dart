import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/view/Search_Screen/search_view_filter.dart';

import '../../constants/constants.dart';


class SearchScreen extends StatelessWidget {
 // const SearchScreen({Key? key}) : super(key: key);

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
                  /// back and search bar
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin:  const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(12, 14, 26, 10),
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(height:20 ,),
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
                                color: const Color(0xFF6B7280)),
                          ),
                        ),
                      ],
                    )
                ),
                /// list of recent search jobs
                InkWell(
                  onTap: (){
                    navigateTo(context, const SearchViewFilter());
                  },
                  child: ListTile(
                    leading: const Image(image: AssetImage('assets/images/clock.png'),),
                    title: Text('Junior UI Designer',
                      style: TextStyle(
                          fontSize: 11.sp,),
                    ),
                    trailing: const Image(
                      image: AssetImage('assets/images/close-circle.png'),),
                  ),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/clock.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 11.sp,),
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
                                color: const Color(0xFF6B7280)),
                          ),
                        ),
                      ],
                    ),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/search-status.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 11.sp,),
                  ),
                  trailing: const Image(
                    image: AssetImage('assets/images/ar.png'),),
                ),
                ListTile(
                  leading: const Image(image: AssetImage('assets/images/search-status.png'),),
                  title: Text('Junior UI Designer',
                    style: TextStyle(
                      fontSize: 11.sp,),
                  ),
                  trailing:  const Image(
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
