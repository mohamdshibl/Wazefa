import 'package:flutter/material.dart';
import 'package:wazefa/view/login%20and%20register/register.dart';
import '../../constants/custom_widgets.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';


class LoginScreen extends StatelessWidget {
//  const LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Image(image:AssetImage('assets/images/Logo.png') ,),
                  ],
                ),
                Text('Login',
                  style: TextStyle(fontSize: 20.sp,),),
                const SizedBox(height: 8,),
                Text('Please login to find your dream job',
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
                  label: 'Email Here' ,
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
                  label: 'Password Here' ,
                  suffix: Icons.visibility_outlined,
                  //onChange: (){},
                ),
                const SizedBox(height: 15,),
                /// check box
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _ischecked,
                            onChanged: (bool? value) {   },
                          ),
                          //SizedBox(width: 5,),
                          Text('Remember me',
                            style: TextStyle(fontSize: 11.sp,),
                          ),
                        ],
                      ),
                     ),
                     TextButton(
                       child: Text('Forgot Password?',
                      style: TextStyle(fontSize: 11.sp,),),
                       onPressed: () {  },
                    ),

                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?',  ),

                    TextButton(onPressed: (){
                      navigateTo(context, RegistrationScreen());

                    },
                        child: const Text('Register',),),
                  ],
                ),
                mainbuttom(text: 'Login', onTap: () {} ),
                // defaultButton(
                //     function: (){
                //
                //     },
                //     text: 'Login'
                // ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('--------------'),
                    SizedBox(width: 20,),
                    Text('Or Login With Account'),
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

    );
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