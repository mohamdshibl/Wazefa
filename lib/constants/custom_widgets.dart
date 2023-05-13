import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/utils.dart';
import 'package:chip_list/chip_list.dart';

import '../Cubit/app_cubit.dart';
import '../Cubit/app_states.dart';
import '../model/messages_models/chat_model.dart';
import '../shared/local/shared_pref.dart';
import '../view/Splash/ss.dart';
import '../view/messages/messages.dart';
import '../view/messages/unread_message.dart';
import 'colors.dart';
import 'constants.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AssetsImages.splashLogo,
        ),
      ],
    );
  }
}

/// btn sheet 1
class FilterBottomSheet extends StatefulWidget {
  FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  List<String> _dogeNames = [
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
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        )),
                    Text(
                      'Set Filter',
                      style: TextStyle(
                        fontSize: 17.sp,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(
                  text: 'Job Tittle',
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  image: AssetsImages.briefcase,
                  hintText: 'UI/UX Designer',
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(
                  text: 'Location',
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  image: AssetsImages.briefcase,
                  hintText: 'Jakarta, Indonesia',
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(
                  text: 'Salary',
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  image: AssetsImages.briefcase,
                  hintText: '5K - 10K',
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultText(
                  text: 'Job Type',
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ChipList(
                      listOfChipNames: _dogeNames,
                      supportsMultiSelect: true,
                      activeBgColorList: const [
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF)
                      ],
                      inactiveBgColorList: const [Colors.white],
                      activeTextColorList: [Colors.blue.shade900],
                      inactiveTextColorList: const [Colors.black],
                      inactiveBorderColorList: [Colors.black],
                      activeBorderColorList: const [Color(0xFF3366FF)],
                      borderRadiiList: const [100],
                      style: TextStyle(fontSize: 11.sp),
                      listOfChipIndicesCurrentlySeclected: [0],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 140,
                ),
                mainbuttom(text: 'Show result', onTap: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// btn sheet 2
class chipsBottomSheet extends StatelessWidget {
  chipsBottomSheet({Key? key}) : super(key: key);

  List<String> _dogeNames = [
    'Remote',
    'Onsite',
    'Hybird',
    'Any',
  ];

  //int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsImages.tobLine,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'On-Site/Remote',
                  style: TextStyle(
                    fontSize: 17.sp,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ChipList(
                      listOfChipNames: _dogeNames,
                      activeBgColorList: const [
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF),
                        Color(0xFFD6E4FF)
                      ],
                      inactiveBgColorList: const [Colors.white],
                      activeTextColorList: [Colors.blue.shade900],
                      inactiveTextColorList: const [Colors.black],
                      inactiveBorderColorList: const [Colors.black],
                      activeBorderColorList: const [Color(0xFF3366FF)],
                      borderRadiiList: const [100],
                      style: TextStyle(fontSize: 11.sp),
                      supportsMultiSelect: true,
                      listOfChipIndicesCurrentlySeclected: [0],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                mainbuttom(text: 'Show result', onTap: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// btn sheet 3
class SavedBottomsheet extends StatelessWidget {
  const SavedBottomsheet({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = JobsCubit.get(context);
          //list = cubit.jobsList;
          var newJobId = cubit.newJobId;
          return Container(
            height: 32.h,
            width: 300.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(85),
                    topRight: Radius.circular(82))),
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Image.asset('assets/images/line.png'),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 90.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: const BorderSide(width: .5, color: Colors.grey),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          backgroundColor: const Color(0xFFFFFFFF)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/apply.png',
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Text(
                            'Apply job',
                            style: TextStyle(color: Color(0xFF111827)),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF111827),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 90.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(width: .5, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: const Color(0xFFFFFFFF)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/export1.png',
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        const Text(
                          'Share via...',
                          style: TextStyle(color: Color(0xFF111827)),
                        ),
                        Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xFF111827),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 6.h,
                  width: 90.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: const BorderSide(width: .5, color: Colors.grey),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          backgroundColor: const Color(0xFFFFFFFF)),
                      onPressed: () {
                        var token = MyCache.getData(key: 'token')!;
                        var id = MyCache.getData(key: 'id')!;
                        cubit.deleteJob(newJobId,token);
                        cubit.getSavedJobs(id);
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/save2.png',
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Text(
                            'Cancel save',
                            style: TextStyle(color: Color(0xFF111827)),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF111827),
                          )
                        ],
                      )),
                )
              ],
            ),
          );
        });
  }
}

/// btn sheet 4
class messagesbottomsheet extends StatelessWidget {
  const messagesbottomsheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Column(
        children: [
          SizedBox(
            height: 1.h,
          ),
          Image.asset('assets/images/line.png'),
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Message filters',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111827)),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          // Unread
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {
                  navigateTo(context, UnreadMessages());
                },
                child: Row(
                  children: [
                    Text(
                      'Unread',
                      style:
                          TextStyle(fontSize: 13.sp, color: Color(0xFF374151)),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          // spam
          SizedBox(
            height: 6.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Spam',
                      style:
                          TextStyle(fontSize: 13.sp, color: Color(0xFF374151)),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          // Archived
          SizedBox(
            height: 6.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Emptymessages()));
                },
                child: Row(
                  children: [
                    Text(
                      'Archived',
                      style:
                          TextStyle(fontSize: 13.sp, color: Color(0xFF374151)),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

/// btn sheet 5

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 300.w,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(85), topRight: Radius.circular(82))),
      child: Column(
        children: [
          SizedBox(
            height: 1.h,
          ),
          Image.asset('assets/images/line.png'),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/briefcase2.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Visit job post',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 42.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/note.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'View my application',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 30.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/sms.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Mark as unread',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 40.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/notification.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Mute',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 57.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/import.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Archive',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 52.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 7.h,
            width: 90.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(width: .5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    backgroundColor: const Color(0xFFFFFFFF)),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/trash.png',
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Delete conversation',
                      style:
                          TextStyle(color: Color(0xFF111827), fontSize: 12.sp),
                    ),
                    SizedBox(width: 30.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xFF111827),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final Chat chat;

  const MessageBubble({
    required this.chat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          chat.id == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: chat.text.length <= 20 ? 40.w : 80.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: chat.id == 0
                  ? const Color(0xFFE5E7EB)
                  : const Color(0xFF3366FF)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  chat.text,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: chat.id == 0
                          ? const Color(0xFF1F2937)
                          : const Color(0xFFF4F4F5)),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      chat.timeStamp,
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: chat.id == 0
                              ? const Color(0xFF6B7280)
                              : const Color(0xFFF4F4F5)),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  String? image;
  late String hintText;
  late bool obsecuretext;
  IconButton? suffixIcon;
  FormFieldValidator? validator;
  ValueChanged<String>? onChanged;
  TextEditingController? controller = TextEditingController();

  CustomTextFormField(
      {this.image,
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
            AssetImage(image!),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
              borderRadius: BorderRadius.circular(10)),
          prefixIconColor: Colors.black,
          focusColor: Colors.blue,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF9CA3AF),
          )),
      style: const TextStyle(fontSize: 14),
    );
  }
}

///

class ContainerWidget extends StatefulWidget {
  int index;
  static int? groupValue = 0;
  final ValueChanged<int?>? function;
  final GestureTapCallback? containerFunction;

  ContainerWidget(
      {Key? key,
      required this.index,
      required this.function,
      required this.containerFunction});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.containerFunction,
      child: Container(
        height: 11.h,
        decoration: BoxDecoration(
            color: ContainerWidget.groupValue == widget.index
                ? Color(0xFFD6E4FF)
                : Colors.white,
            border: Border.all(
                color: ContainerWidget.groupValue == widget.index
                    ? Color(0xFF3366FF)
                    : Color(0xFFD1D5DB)),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Senior UX Designer - ${widget.index}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'CV.pdf',
                        style: TextStyle(
                            fontSize: 11.sp, color: const Color(0xFF6B7280)),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Icon(
                        Icons.circle,
                        size: 2.w,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Portfolio.pdf',
                        style: TextStyle(
                            fontSize: 11.sp, color: const Color(0xFF6B7280)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Radio(
                toggleable: true,
                value: widget.index,
                groupValue: ContainerWidget.groupValue,
                onChanged: widget.function)
          ],
        ),
      ),
    );
  }
}

class CustomStepper extends StatefulWidget {
  CustomStepper({
    Key? key,
  });

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return EasyStepper(
        stepRadius: 6.w,
        activeStep: currentStep,
        showLoadingAnimation: false,
        enableStepTapping: true,
        steppingEnabled: true,
        lineLength: 12.w,
        activeLineColor: Colors.blue,
        defaultLineColor: const Color(0xFFD1D5DB),
        defaultStepBorderType: BorderType.dotted,
        internalPadding: 10.w,
        finishedStepBorderColor: Colors.transparent,
        finishedLineColor: const Color(0xFF03366FF),
        finishedStepBackgroundColor: const Color(0xFF03366FF),
        finishedStepIconColor: Colors.white,
        finishedStepTextColor: const Color(0xFF03366FF),
        activeStepBorderColor: const Color(0xFF03366FF),
        activeStepTextColor: const Color(0xFF03366FF),
        activeStepBackgroundColor: Colors.transparent,
        borderThickness: 3,
        unreachedStepTextColor: const Color(0xFF9CA3AF),
        steps: [
          EasyStep(
              customStep: currentStep > 0
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 4.h,
                    )
                  : Text(
                      '1',
                      style:
                          TextStyle(color: Color(0xFF03366FF), fontSize: 13.sp),
                    ),
              customTitle: Text(
                'Biodata',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11.sp, color: Color(0xFF03366FF)),
              )),
          EasyStep(
            customStep: currentStep == 1
                ? Text(
                    '2',
                    style:
                        TextStyle(color: Color(0xFF03366FF), fontSize: 13.sp),
                  )
                : currentStep > 1
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 4.h,
                      )
                    : Text(
                        '2',
                        style: TextStyle(
                            color: Color(0xFF9CA3AF), fontSize: 13.sp),
                      ),
            customTitle: Text(
              'Type Of Work',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 11.sp,
                  color: currentStep >= 1
                      ? Color(0xFF03366FF)
                      : Color(0xFF9CA3AF)),
            ),
          ),
          EasyStep(
            customStep: currentStep == 2
                ? Text(
                    '3',
                    style:
                        TextStyle(color: Color(0xFF03366FF), fontSize: 13.sp),
                  )
                : currentStep > 2
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 4.h,
                      )
                    : Text(
                        '3',
                        style: TextStyle(
                            color: Color(0xFF9CA3AF), fontSize: 13.sp),
                      ),
            customTitle: Text(
              'Upload Portofolio',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 11.sp,
                  color: currentStep >= 2
                      ? Color(0xFF03366FF)
                      : Color(0xFF9CA3AF)),
            ),
          ),
        ],
        onStepReached: (index) {
          setState(() => currentStep = index);
        });
  }
}

Widget mainbuttom({
  required String text,
  required VoidCallback onTap,
}) =>
    SizedBox(
      height: 6.5.h,
      width: 90.w,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFf3366FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        child: Center(
          child: defaultText(
            text: text,
            fontSize: 13.0.sp,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultText({
  required String text,
  var fontSize,
  required color,
}) =>
    Text(
      text,
      style: TextStyle(fontSize: fontSize, color: color),
    );
