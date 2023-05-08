
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

import '../model/jobs_model/jobs_model.dart';
import '../shared/remote/http_helper.dart';
import '../view/Home/Home.dart';
import '../view/Home/Home_Screen.dart';
import '../view/apply_job/apply_job_view.dart';
import '../view/login and register/register.dart';
import '../view/messages/messages.dart';
import '../view/notifications/notification.dart';
import '../view/profile/profile.dart';
import '../view/saved_view/saved_view.dart';
import 'app_states.dart';

class JobsCubit extends Cubit<JobsStates> {

  JobsCubit() : super(NewsInitialState());

  static JobsCubit get(context) => BlocProvider.of(context);

  int currentIndexs = 0;


  List<Widget> Screans = [
    HomeView(),
    ContactsPage(),
    JobApplication(),
    Savedjobs(),
    Profile(),
  ];

  List<BottomNavigationBarItem> b = [
    BottomNavigationBarItem(
        label: 'home',
        icon: Image.asset('assets/images/home.png'),
        activeIcon: Image.asset('assets/images/home2.png')),
    BottomNavigationBarItem(
        label: 'messages',
        icon: Image.asset('assets/images/message.png'),
        activeIcon: Image.asset('assets/images/message2.png')),
    BottomNavigationBarItem(
        label: 'Applied',
        icon: Image.asset('assets/images/briefcase2.png'),
        activeIcon: Image.asset('assets/images/briefcase.png')),
    BottomNavigationBarItem(
        label: 'Saved',
        icon: Image.asset('assets/images/archive.png'),
        activeIcon: Image.asset('assets/images/archive2.png')),
     const BottomNavigationBarItem(
        label: 'Profile',
        icon: Icon(Icons.person)
    ),
  ];

  void changeIndexBtmNav(int index) {
    currentIndexs = index;
    emit(NewsNtmNavState());
  }
  List<JobsModel> jobsList = [];
  Future<List> getAllJobs() async {

  List<dynamic> data = await Api().get(url:'http://164.92.246.77/api/jobs');

  List<JobsModel> jobs = data.map((job) =>
      JobsModel.fromJson(job)).toList();

  jobsList = jobs;
  emit(GetJobsSuccessState());
  print(jobsList[1].name);
  // List<JobsModel> jobs = [];
  // for(int i=0;i<data.length;i++){
  // jobs.add(JobsModel.fromJson(data[i]));
  // }

  // for (JobsModel job in jobs) {
  // print('${job.name}');
  // }
  // //print(jobs[data[1].]);
  return data;
  }




}