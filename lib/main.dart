import 'package:flutter/material.dart';
import 'package:wazefa/view/onboarding/onboard_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home: OnBoardingScreen()
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('shibl'),
      ),
    );
  }
}
