import 'package:flutter/material.dart';
import 'package:wazefa/view/login%20and%20register/register.dart';
import '../../constantts/constants.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LoginScreen extends StatelessWidget {
//  const LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var _ischecked = false;

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
                  children: [
                    Image(image:AssetImage('assets/images/Logo.png') ,),
                  ],
                ),
                Text('Login',
                  style: TextStyle(fontSize: 28.dp,),),
                SizedBox(height: 8,),
                Text('Please login to find your dream job',
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
                  label: 'Email Here' ,
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
                  label: 'Password Here' ,
                  suffix: Icons.visibility_outlined,
                  //onChange: (){},
                ),
                SizedBox(height: 15,),
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
                            style: TextStyle(fontSize: 14.dp,),
                          ),
                        ],
                      ),
                     ),
                     TextButton(
                       child: Text('Forgot Password?',
                      style: TextStyle(fontSize: 14.dp,),),
                       onPressed: () {  },
                    ),

                  ],
                ),
                SizedBox(height: 30,),
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

                defaultButton(
                    function: (){

                    },
                    text: 'Login'
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('--------------'),
                    SizedBox(width: 20,),
                    Text('Or Login With Account'),
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