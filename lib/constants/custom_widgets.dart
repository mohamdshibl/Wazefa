import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/utils.dart';
import 'package:chip_list/chip_list.dart';


class SplashViewBody extends StatelessWidget{
  const SplashViewBody({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisSize: MainAxisSize.min,
      children:  [
        Image.asset(AssetsImages.splashLogo,),
      ],
    );
  }}

/// btn sheet 1
class FilterBottomSheet extends StatefulWidget{
 //  FilterBottomSheet({Key? key}) :super(key:key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
   final List<String> _dogeNames = [
    'Full Time',
    'Remote',
    'Contract',
    'Part Time',
     // 'Onsite',
     // 'Internship',
  ];

  //int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context){
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 700,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        )),
                    Text('Set Filter',style: TextStyle(
                      fontSize: 17.sp,
                    ),),
                    TextButton(
                      child: Text('Reset',style: TextStyle(
                        fontSize: 12.sp,
                      ),),
                      onPressed: () {  },
                    ),

                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(text: 'Job Tittle', fontSize: 12.sp, color: Colors.black,),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(image: AssetsImages.briefcase,
                  hintText: 'UI/UX Designer',),
                const SizedBox(
                  height: 15,
                ),
                defaultText(text: 'Location', fontSize: 12.sp, color: Colors.black,),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(image: AssetsImages.briefcase,
                  hintText: 'Jakarta, Indonesia',),
                const SizedBox(
                  height: 15,
                ),
                defaultText(text: 'Salary', fontSize: 12.sp, color: Colors.black,),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(image: AssetsImages.briefcase,
                  hintText: '5K - 10K',
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(text: 'Job Type', fontSize: 12.sp, color: Colors.black,),
                const SizedBox(
                  height: 15,
                ),

                //const Text('Using supportsMultiSelect'),
                const SizedBox(
                  height: 10,
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ChipList(
                          listOfChipNames: _dogeNames,
                          activeBgColorList: const [Color(0xFFD6E4FF),
                            Color(0xFFD6E4FF), Color(0xFFD6E4FF),Color(0xFFD6E4FF)],
                          inactiveBgColorList: [Colors.white],
                          activeTextColorList: [Colors.blue.shade900],
                          inactiveTextColorList: [Colors.black],
                          inactiveBorderColorList: [Colors.black],
                          activeBorderColorList:[Color(0xFF3366FF)],
                          borderRadiiList:[100],
                          style: TextStyle(fontSize: 11.sp),
                          supportsMultiSelect:true,
                          listOfChipIndicesCurrentlySeclected: [0],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 140,
                    ),
                mainbuttom(text: 'Show result', onTap: () {


                }),

              ],
            ),
          ),

        );
      },
    );

  }}
/// btn sheet 2
class chipsBottomSheet extends StatelessWidget{
  chipsBottomSheet({Key? key}) :super(key:key);

  List<String> _dogeNames = [
    'Remote',
    'Onsite',
    'Hybird',
    'Any',
  ];

  //int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 250,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset(AssetsImages.tobLine,),
                  const SizedBox(
                    height: 15,
                  ),

                  Text('On-Site/Remote',style: TextStyle(
                    fontSize: 17.sp,
                  ),),
                  const SizedBox(
                height: 15,
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ChipList(
                        listOfChipNames: _dogeNames,
                        activeBgColorList: [Colors.blueAccent, Colors.blue.shade100, Colors.blueAccent,Colors.blueAccent],
                        inactiveBgColorList: [Colors.white],
                        activeTextColorList: [Colors.white],
                        inactiveTextColorList: [Colors.black],
                        inactiveBorderColorList: [Colors.black],
                        activeBorderColorList:[Color(0xFFD6E4FF)],
                        borderRadiiList:[100],
                        style: TextStyle(fontSize: 12.sp),
                        supportsMultiSelect:true,
                        listOfChipIndicesCurrentlySeclected: [0],
                        // borderColorList: [Colors.pink, Colors.yellow, Colors.green,Colors.green],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                   mainbuttom(text: 'Show result', onTap: () {


                  }),
            ],
          ),

        ),
      );
    },
    );

  }}


class CustomTextFormField extends StatelessWidget {
  late String image;
  late String hintText;
  late bool obsecuretext;
  IconButton? suffixIcon;
  FormFieldValidator? validator;
  ValueChanged<String>? onChanged;
  TextEditingController? controller = TextEditingController();

  CustomTextFormField(
      {required this.image,
        required this.hintText,
        this.obsecuretext = false,
        this.suffixIcon,
        this.validator,
        this.onChanged,
        this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      obscureText: obsecuretext,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: ImageIcon(
            AssetImage(image),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD1D5DB)),
              borderRadius: BorderRadius.circular(10)),
          prefixIconColor: Colors.black,
          focusColor: Colors.blue,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF9CA3AF),
          )),
      style: TextStyle(fontSize: 14),
    );
  }
}
///
///
///


Widget mainbuttom({
  required  String text,
  required VoidCallback onTap,
  }) => Container(
  height:6.5.h,
  width: double.infinity,
  child: ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFf3366FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )
    ),

    child: Center(
      child: defaultText(
        text:text,
        fontSize: 13.0.sp,
        color: Colors.white,
      ),
    ),
  ),
);


Widget defaultText({
  required  String text,
  var fontSize,
  required color,}) =>
    Text(text,
            style: TextStyle(
                fontSize: fontSize,
                   color: color),
    );



