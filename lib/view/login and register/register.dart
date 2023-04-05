import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:wazefa/view/login%20and%20register/login_screen.dart';

import '../../constantts/constants.dart';

class RegistrationScreen extends StatelessWidget {
  // RegistrationScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var _ischecked = false;

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
                    style: TextStyle(fontSize: Adaptive.sp (28),),),
                  SizedBox(height: 8,),
                  Text('Please create an account to find your dream job',
                    style:Theme.of(context).textTheme.headline6!.copyWith(color: Colors.grey),),
                  SizedBox(height: 30,),
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
                  SizedBox(height: 30,),
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
                  SizedBox(height: 20,),
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
                  SizedBox(height: 30,),
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

                  defaultButton(
                      function: (){

                      },
                      text: 'Create account'
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('--------------'),
                      SizedBox(width: 20,),
                      Text('Or Sign up With Account'),
                      SizedBox(width: 20,),
                      Text('--------------'),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    children: [
                      Container(
                        child: Image(image:AssetImage('assets/images/face.png') ,),
                      ),
                      Spacer(),
                      Container(
                        child: Image(image:AssetImage('assets/images/go.png') ,),
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
