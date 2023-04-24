
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LFilterChip extends StatefulWidget {
  @override
  _LFilterChipState createState() => new _LFilterChipState();
}

class _LFilterChipState extends State<LFilterChip> {
  var _dataList = [
    'Full Time',
    'Remote',
    'Contract',
    'Part Time',
    'Onsite',
    'Internship',
  ];
  var selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ ListView.builder(
          itemCount: _dataList.length,
          itemBuilder: (BuildContext context, int index)
          =>bItem(),
        ),
      ],
      ),
    );
  }}


Widget bItem() => Container(
  width: 86,
  height: 34,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey,),
    borderRadius: BorderRadius.circular(20),
    color: const Color(0xFFfffFF),
  ),
  child: Center(
    child: Text('',
      style: TextStyle(fontSize: 10.sp,),),
  ),
);



/*
FilterChip(
          label: Text(_dataList[index]),
          onSelected: (bool value) {
            if (selected.contains(index)) {
              selected.remove(index);
            } else {
              selected.add(index);
            }
            setState(() {
              print(selected);
            });
          },
          selected: selected.contains(index),
          selectedColor: Colors.blue,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          backgroundColor: Colors.grey.shade200,
        ),*/

// class LFilterChip extends StatefulWidget {
//   @override
//   _LChoiceChipState createState() => new _LChoiceChipState();
// }
//
// class _LChoiceChipState extends State<LFilterChip> {
//   var _dataList = [
//     'Choice 1',
//     'Choice 2',
//     'Choice 3',
//     'Choice 4',
//     'Choice 5',
//     'Choice 6',
//     'Choice 7',
//     'Choice 8'
//   ];
//   int? _value = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: _dataList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ChoiceChip(
//             label: Text(_dataList[index]),
//             selected: _value == index,
//             selectedColor: Colors.amber,
//             selectedShadowColor: Colors.red,
//             onSelected: (bool value) {
//               setState(() {
//                 _value = value ? index : null;
//               });
//             },
//             backgroundColor: Colors.blue,
//             labelStyle: TextStyle(color: Colors.white),
//           );
//         },
//       ),
//     );
//   }
// }