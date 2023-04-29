import 'package:flutter/material.dart';
import 'package:wazefa/constants/custom_widgets.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';
import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';

class RegistrationScreen extends StatelessWidget {
  // RegistrationScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Image(image:AssetImage('assets/images/Logo.png') ,),
                    ],
                  ),
                  Text('Cereate Account',
                    style: TextStyle(fontSize: 20.sp,),),
                  const SizedBox(height: 8,),
                  Text('Please create an account to find your dream job',
                    style:Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey),),
                  const SizedBox(height: 30,),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (String v){
                      if (v.isEmpty){
                        return 'please write your email' ;
                      }
                    },
                    label: 'Username' ,
                    suffix: Icons.email,
                    // onChange: (){},
                  ),
                  const SizedBox(height: 30,),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (String v){
                      if (v.isEmpty){
                        return 'please write your email' ;
                      }
                    },
                    label: 'Email' ,
                    suffix: Icons.email,
                    // onChange: (){},
                  ),
                  const SizedBox(height: 20,),
                  defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (String v){
                      if (v.isEmpty){
                        return 'please write your password' ;
                      }
                    },
                    label: 'Password' ,
                    suffix: Icons.visibility_outlined,
                    //onChange: (){},
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?',  ),

                      TextButton(onPressed: (){
                        navigateTo(context, LoginScreen());

                      },
                        child: const Text('Login',),),
                    ],
                  ),
                     mainbuttom(text: 'Create account', onTap: () {} ),
                  // defaultButton(
                  //     function: (){
                  //
                  //     },
                  //     text: 'Create account'
                  // ),

                   SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const [
                      Text('--------------'),
                      SizedBox(width: 20,),
                      Text('Or Sign up With Account'),
                      SizedBox(width: 20,),
                      Text('--------------'),
                    ],
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    children: [
                      Container(
                        child: const Image(image:AssetImage('assets/images/face.png') ,),
                      ),
                      const Spacer(),
                      Container(
                        child: const Image(image:AssetImage('assets/images/go.png') ,),
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
  }
}
