import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazefa/view/login%20and%20register/register.dart';
import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../../constants/utils.dart';
import '../../shared/local/shared_pref.dart';
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
          void _login(String email,password,) {
            if (_formKey.currentState!.validate()) {
              cubit.login(email,password,context);
              var id = MyCache.getData(key: 'id')!;
              cubit.getSavedJobs(id);
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
                              image: AssetImage(AssetsImages.jobsqueLogo,),
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
                            if(value!.isEmpty)
                            {
                              return "Email must not be empty";

                            }
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+.[a-z]").
                            hasMatch(value))
                            {
                              return "please enter valid email";
                            }
                            else {return null;}
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
                              child: Image.asset(AssetsImages.googleBottom,),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Image.asset(AssetsImages.facebookBottom,),
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
void showToast( context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text('email or password is wrong',style: TextStyle(fontSize: 12.sp),),
      action: SnackBarAction(
          label: 'ok', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
checkConnectivity(BuildContext context) async {
  var result =   await Connectivity().checkConnectivity();
  print('conection Type =>  ${result.name}');
  if (result.name != 'none'){

  }else {
    internetConnection(context);
  }
}
void internetConnection(context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content:  Text('No internet connection',style: TextStyle(fontSize: 12.sp),),
      action: SnackBarAction(
          label: 'ok', onPressed: scaffold.hideCurrentSnackBar,),
    ),
  );
}