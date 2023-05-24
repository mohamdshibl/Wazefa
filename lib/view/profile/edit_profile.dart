import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sizer/sizer.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/utils.dart';
import '../../shared/local/shared_pref.dart';

class EditProfile extends StatelessWidget {
   EditProfile({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _bioController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = JobsCubit.get(context);

          void _save(String name ,bio,address,String mobile,) {
            if (_formKey.currentState!.validate()) {
              var id = MyCache.getData(key: 'id')!;
              var token = MyCache.getData(key: 'token')!;

              cubit.editProfile(token,id,name, bio, address, mobile,);
            }
          }

          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                          SizedBox(
                            width: 25.w,
                          ),
                           Text("Edit Profile",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.sp),
                        child: Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: Container(
                            width: 30.0.w,
                            height: 15.0.h,
                            decoration: BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: const DecorationImage(
                                image: AssetImage(AssetsImages.profile),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0.w,
                              ),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {


                          },
                          child:  Text("Change Photo",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Color(0xff3366FF)),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9CA3AF)),
                            ),
                            SizedBox(height: 1.h,),
                            CustomTextFormField(
                              controller: _nameController,
                              validator: (var value) {
                                if (value.isEmpty) {
                                  return 'Please enter your name';
                                }
                              },
                              image: AssetsImages.profile,
                              hintText: 'Name',
                            ),
                            SizedBox(height: 1.h,),
                            Text(
                              "Bio",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9CA3AF)),
                            ),
                            SizedBox(height: 1.h,),
                            CustomTextFormField(
                              controller: _bioController,
                              validator: (var value) {
                                if (value.isEmpty) {
                                  return 'Please enter your BIO';
                                }
                              },
                              image: AssetsImages.profile,
                              hintText: 'BIO',
                            ),
                            SizedBox(height: 1.h,),
                            Text(
                              "Address",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9CA3AF)),
                            ),
                            SizedBox(height: 1.h,),
                            CustomTextFormField(
                              controller: _addressController,
                              validator: (var value) {
                                if (value.isEmpty) {
                                  return 'Please enter your Address';
                                }
                              },
                              image: AssetsImages.profile,
                              hintText: 'Address',
                            ),
                            SizedBox(height: 1.h,),
                            Text(
                              "No.Handphone",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff9CA3AF)),
                            ),
                            SizedBox(height: 1.h,),
                            IntlPhoneField(
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),
                          ],
                        ),
                      ),
                      mainbuttom(text: 'Save', onTap: () {
                         _save(_nameController.text, _bioController.text,
                             _addressController.text, _phoneController.text);
                          Navigator.pop(context);
                      })
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
