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

// class CustomTextFormField extends StatelessWidget {
//   late String image;
//   late String hintText;
//   late bool obsecuretext;
//   IconButton? suffixIcon;
//   FormFieldValidator? validator;
//   ValueChanged<String>? onChanged;
//   TextEditingController? controller = TextEditingController();
//
//   CustomTextFormField(
//       {required this.image,
//         required this.hintText,
//         this.obsecuretext = false,
//         this.suffixIcon,
//         this.validator,
//         this.onChanged,
//         this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       onChanged: onChanged,
//       validator: validator,
//       obscureText: obsecuretext,
//       decoration: InputDecoration(
//           suffixIcon: suffixIcon,
//           prefixIcon: ImageIcon(
//             AssetImage(image),
//           ),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//               borderSide: BorderSide(color: Colors.blue)),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Color(0xFFD1D5DB)),
//               borderRadius: BorderRadius.circular(10)),
//           prefixIconColor: Colors.black,
//           focusColor: Colors.blue,
//           hintText: hintText,
//           hintStyle: TextStyle(
//             color: Color(0xFF9CA3AF),
//           )),
//       style: TextStyle(fontSize: 14.sp),
//     );
//   }
// }
