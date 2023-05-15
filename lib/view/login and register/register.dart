import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import 'package:sizer/sizer.dart';

import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/constants.dart';

class RegistrationScreen extends StatefulWidget {
  // RegistrationScreen({Key? key}) : super(key: key);
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _ischecked = false;
  bool obsecuretext = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkConnectivity(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
           var cubit = JobsCubit.get(context);

          void _Register(name, email, password) {
            if (_formKey.currentState!.validate()) {
              cubit.register(name,email,password,context);
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Error'),
                  content: Text('Invalid username or password'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            }
          }
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/Logo.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Please create an account to find your dream job',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        CustomTextFormField(
                          controller: _nameController,
                          validator: (var value) {
                            if (value.isEmpty) {
                              return 'Please enter your Name';
                            }
                          },
                          image: 'assets/images/profile.png',
                          hintText: 'Name',
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomTextFormField(
                          controller: _emailController,
                          validator: (var value) {
                            if (value.isEmpty) {
                              return 'Please enter your Email';
                            }
                          },
                          image: 'assets/images/sms.png',
                          hintText: 'Username',
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomTextFormField(
                          controller: _passwordController,
                          validator: (var value) {
                            if (value.isEmpty) {
                              return 'password is to short';
                            }
                          },
                          obsecuretext: obsecuretext,
                          suffixIcon: IconButton(
                            icon: obsecuretext
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility),
                            onPressed: () {
                              obsecuretext = !obsecuretext;
                            },
                          ),
                          image: 'assets/images/lock.png',
                          hintText: 'Password',
                        ),
                        SizedBox(height: 18.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                          ],
                        ),
                        mainbuttom(text: 'Create account', onTap: () {
                          _Register(_nameController.text,_emailController.text,
                              _passwordController.text);
                        }),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '--------------',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Or Sign up With Account',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '--------------',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Image.asset('assets/images/go.png'),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Image.asset('assets/images/face.png'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
void showToastWhenRegister( context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text('email or password is not valid',style: TextStyle(fontSize: 12.sp),),
      action: SnackBarAction(
          label: 'ok', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
