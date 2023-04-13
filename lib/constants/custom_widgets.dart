import 'package:flutter/material.dart';
import 'package:wazefa/constants/utils.dart';

class SplashViewBody extends StatelessWidget{
  const SplashViewBody({Key? key}) :super(key:key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisSize: MainAxisSize.min,
      children:  [
        Image.asset(AssetsImages.splashLogo,),
      ],
    );
  }}



Widget customListNews (articles,context){
  return Container(

  );
}