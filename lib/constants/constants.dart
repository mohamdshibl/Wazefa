import 'package:flutter/material.dart';

Widget defaultSeparatorContainer() {
  return Container(
    width: double.infinity,
    height: 4,
    color: Colors.grey[300],
  );
}

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.deepOrange,
  required Function function,
  required String text,

}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.blue,
      ),
      width: width,
      //color: background,
      child: MaterialButton(
        onPressed: () {
          function;
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
Widget defaulttButton({
  double width = double.infinity,
  Color background = Colors.deepOrange,
  required Function function,
  required String text,

}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.deepOrange,
      ),
      width: width,
      //color: background,
      child: TextButton(
        onPressed: () {
          function;
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  double width = double.infinity,
  // Color background = Colors.grey,
  required TextInputType type,
  //String? text,
  required Function validate,
  required String label,
   IconData? suffix,
  // IconData? prifix,
  //Function? onSubmit ,
  Function? onChange ,

 // VoidCallback? onTap,
//  required Function onChange,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      //onFieldSubmitted:  (value) => onSubmit!(value),
      //onChanged: (value) => onChange!(value),
      //onTap: onTap,
      validator: (value) => validate(value),
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: Icon(suffix),
        //prefixIcon: Icon(prifix),
        border: const OutlineInputBorder(),
      ),
    );

void navigateTo(context, widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget)
  );
}

void navigateToAndStop(context, widget) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget,),
      (Route<dynamic> route) => false,
  );
}