import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazefa/view/login%20and%20register/register.dart';
import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../Home/Home_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //const LoginScreen({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool obsecuretext = true;
  bool? checkBox = false;
  final _ischecked = false;



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit, JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = JobsCubit.get(context);


          void _login(String email,password,) {
            if (_formKey.currentState!.validate()) {
              cubit.login(email,password,context);
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
                        SizedBox(height: 5.h,),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Please login to find your dream job',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.grey),
                        ),
                        SizedBox(height: 5.h,),
                        //email
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
                        SizedBox(height: 2.h,),
                        //pass
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
                        SizedBox(height: 3.h,),
                        /// check box
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                              value: _ischecked,
                              onChanged: (bool? value) {

                              },
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: 11.sp,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: 18.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',style: TextStyle(fontSize: 10.sp),
                            ),
                            TextButton(
                              onPressed: () {
                                navigateTo(context, RegistrationScreen());
                              },
                              child: Text(
                                'Register',style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                          ],
                        ),
                        mainbuttom(
                            text: 'Login',
                            onTap: () {


                              _login(_emailController.text,_passwordController.text);

                              //   email: emailController.text,
                              // password: passwordController.text

                              // passwordController.length >= 8 &&
                              //     emailController.isNotEmpty
                              //     ? () {}
                              //     : null,
                            }),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Text('--------------',style: TextStyle(fontSize: 11.sp),),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('Or Sign up With Account',style: TextStyle(fontSize: 11.sp),),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('--------------',style: TextStyle(fontSize: 11.sp),),
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
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// child: ListTile(
// title: Text('Remember me',
// style: TextStyle(fontSize: Adaptive.sp (14),),),
// leading: Checkbox(
// value: _ischecked,
// onChanged: (bool? value) {  },
// ),
// ),
// ),
// //Spacer(),
// Text('Forgot Password?',
// style: TextStyle(fontSize: Adaptive.sp (14),),
// ),
// ],
// ),
