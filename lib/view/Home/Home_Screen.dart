import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

import 'package:sizer/sizer.dart';
import 'package:wazefa/Cubit/app_states.dart';
import '../../Cubit/app_cubit.dart';
import '../../constants/colors.dart';
import '../../constants/constants.dart';
import '../Search_Screen/search_Screen.dart';
import '../notifications/notification.dart';
import '../saved_view/saved_view.dart';

class HomeScreen extends StatelessWidget {
  // HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobsCubit,JobsStates>(
         listener: (context, state) {},
          builder:(context, state) {
        var cubit = JobsCubit.get(context);
        return Scaffold(
          body: cubit.Screans[cubit.currentIndexs],

          ///  Navigation Bar
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: const Color(0xFF3366FF),
            unselectedItemColor: const Color(0xFF9CA3AF),
            currentIndex: cubit.currentIndexs,
            onTap: (index) {
              cubit.changeIndexBtmNav(index);
            },
            items: cubit.b,
          ),
        );
      },
    );
  }
}
