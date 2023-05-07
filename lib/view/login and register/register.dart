import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import 'package:sizer/sizer.dart';

import '../../Cubit/app_cubit.dart';
import '../../Cubit/app_states.dart';
import '../../constants/constants.dart';

class RegistrationScreen extends StatelessWidget {
  // RegistrationScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
        listener: (context, state) {},
        builder: (context, state) {
         // var cubit = JobsCubit.get(context);

          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
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
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
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
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (String v) {
                            if (v.isEmpty) {
                              return 'please write your email';
                            }
                          },
                          label: 'Username',
                          suffix: Icons.email,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        defaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (String v) {
                            if (v.isEmpty) {
                              return 'please write your email';
                            }
                          },
                          label: 'Email',
                          suffix: Icons.email,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          validate: (String v) {
                            if (v.isEmpty) {
                              return 'please write your password';
                            }
                          },
                          label: 'Password',
                          suffix: Icons.visibility_outlined,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Login',
                              ),
                            ),
                          ],
                        ),
                        mainbuttom(text: 'Create account', onTap: () {

                        }),
                      SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('--------------'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Or Sign up With Account'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('--------------'),
                          ],
                        ),
                         SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Image.asset('assets/go.png'),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Image.asset('assets/face.png'),
                              onTap: () {},
                            ),
                          ],
                        ),
                        Spacer(),
                      ],

                    ),
                  ),
                ),
              ),
            ),
          );
        }
        );
  }
}
