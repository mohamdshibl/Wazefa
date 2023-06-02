
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/get_start.dart';

import '../../constants/constants.dart';
import '../../constants/utils.dart';
import '../apply_job/apply_job_view.dart';


class PreferredLocation extends StatefulWidget {
 // static const String routName="Preferedlocation;

  const PreferredLocation({Key? key}) : super(key: key);

  @override
  State<PreferredLocation> createState() => _PreferredLocation();
}

class _PreferredLocation extends State<PreferredLocation> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: DefaultTabController(
                length: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Where are you prefefred Location?",style: TextStyle(
                        fontSize: 20.sp,
                      ),),
                      SizedBox(height: 2.h,),
                      Text("Let us know, where is the work location you want "
                          "at this time, so we can adjust it.",style: TextStyle(fontSize: 11.sp,
                        color: Color(0xfF737379),
                      ),),
                      SizedBox(height: 3.h,),
                      //
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F5),
                            borderRadius: BorderRadius.circular(20)),
                        height: 5.5.h,
                        width: 90.w,
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Color(0xFF6B7280),
                          indicator: BoxDecoration(
                            color: Color(0xFF02337A),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          tabs: [
                            SizedBox(
                              height: 4.h,
                              child: Center(
                                  child: Text(
                                    'Work From Office',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 4.h,
                              child: Center(
                                  child: Text(
                                    'Remote Work',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text("Select the country you want for your job",style: TextStyle(fontSize: 12.sp,
                        color: Color(0xff737379),
                      ),),
                      SizedBox(
                        height: 2.h,
                      ),
                      const Expanded(
                          child: TabBarView(
                            children: [WorkFromOffice(), RemoteWork()],
                          )),


                    ],
                  ),
                ),
              ),
        ),
      ),
      floatingActionButton: Container(
          color: Colors.transparent,
          child: mainbuttom(text: 'Next', onTap: () {
            navigateTo(context,GetStarted() );

          })
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RemoteWork extends StatefulWidget {
  const RemoteWork({Key? key}) : super(key: key);

  @override
  State<RemoteWork> createState() => _RemoteWorkState();
}

class _RemoteWorkState extends State<RemoteWork> {
  bool isPressed = false;
  bool isRemote=false;
  int select=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height*.5,
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
            shrinkWrap: true,

            //physics: const NeverScrollableScrollPhysics(),
            itemCount: Location.locationList.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (1 / .4),
              //crossAxisSpacing: 4.h,
              mainAxisSpacing: .010.w,


            ),

            itemBuilder: (context,index)
            {
              return Column(
                children: [
                  InkWell(
                    onTap: ()
                    {
                      setState(() {

                        Location.locationList[index].selected=!Location.locationList[index].selected;
                        if(Location.locationList[index].selected==true)
                        {
                          select++;
                          print(select);
                          isPressed=true;

                        }

                        //isPressed=!isPressed;
                        // print("done");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius:BorderRadius.circular(100),
                            color: Location.locationList[index].selected? const Color(0xFfD6E4FF):  Colors.white,
                            border: Border.all
                              (color: Location.locationList[index].selected? const Color(0xFf3366FF): const Color(0xFfD1D5DB)),

                          ),
                          child: Align(alignment: Alignment.topLeft,
                            child:
                            SelectCountry(Location.locationList[index]),

                          ),
                        ),

                      ),
                    ),
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}


class WorkFromOffice extends StatelessWidget {
  const WorkFromOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('WorkFromOffice'),
      ),
    );
  }
}



class Location{
  final String image;
  final String countryName;
  bool selected;

  Location({required this.image,
    required this.countryName,
    required this.selected});
  static List<Location>locationList = <Location>
  [
    Location(image:AssetsImages.amrica,
      countryName: 'United States', selected: false,),

    Location(image:AssetsImages.brazel ,
      countryName: 'Argentina', selected: false,),

    Location(image:AssetsImages.indo,
      countryName: 'Canada', selected: false,),

    Location(image:AssetsImages.China,
      countryName: 'China', selected: false,),


    Location(image:AssetsImages.india,
      countryName: 'India', selected: false,),

    Location(image:AssetsImages.indo,
      countryName: 'Indonesia', selected: false,),

    Location(image:AssetsImages.Germany,
      countryName: 'Malaysia', selected: false,),

    Location(image:AssetsImages.singapore,
      countryName: 'Philiphines', selected: false,),

    Location(image:AssetsImages.Japan,
      countryName: 'Polandia', selected: false,),

    Location(image:AssetsImages.brazel,
      countryName: 'Brazil', selected: false,),

    Location(image:AssetsImages.SaudiArabia,
      countryName: 'Saudi Arabia', selected: false,),

    Location(image:AssetsImages.singapore,
      countryName: 'Singapore', selected: false,),


  ];
}

class SelectCountry extends StatelessWidget {
  Location? location;
  SelectCountry(this.location, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("${location?.image}",),
          radius:15,
          backgroundColor: Colors.white,
        ),
        SizedBox(width: 2.w ,),
        Text("${location?.countryName}",style: TextStyle(
          fontSize: 9.sp,
        ),),
      ],
    );
  }
}