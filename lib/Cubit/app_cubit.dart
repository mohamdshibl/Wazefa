import 'package:dio/dio.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wazefa/shared/remote/dio_helper.dart';
import '../constants/constants.dart';
import '../model/jobs_model/jobs_model.dart';
import '../shared/local/shared_pref.dart';
import '../shared/remote/http_helper.dart';
import '../view/Home/Home.dart';
import '../view/Home/Home_Screen.dart';
import '../view/applied/applied_jobs.dart';
import '../view/apply_job/apply_job_view.dart';
import '../view/login and register/login_screen.dart';
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
    AppliedJobs(),
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

  /// get all jobs
  List<JobsModel> jobsList = [];
  Future<List> getAllJobs() async {
    List<dynamic> data = await Api().get(url:'http://164.92.246.77/api/jobs');
    List<JobsModel> jobs = data.map((job) =>
      JobsModel.fromJson(job)).toList();

  jobsList = jobs;
  emit(GetJobsSuccessState());
  return data;
  }
/// login
  String? name ;
  int? id;
  String? token;
  final networkService = NetworkService();

  Future<void> login(email, password, context) async {

    String url = "http://164.92.246.77/api/auth/login";
    emit(loginLoadingsState());
    try {
      Response response = await networkService.postData(url,
          {"password": password, "email": email});

      MyCache.saveData(key: 'token', value: response.data['token']);
      MyCache.saveData(key: 'id', value: response.data['user']['id']);
      MyCache.saveData(key: 'name', value: response.data['user']['name']);

      name = MyCache.getData(key: 'name');

      emit(LoginSuccessState());
      navigateToAndStop(context, HomeScreen());
        getAllJobs();
    } catch (e) {
      showToast(context);
      emit(LoginErrorState());
    }
  }
  /// register
  Future<void> register(name,email,password,context) async {
    String url = "http://164.92.246.77/api/auth/register";
    try {
      Response response = await networkService.postData(url, {
        'name': name,
        'email': email,
        'password': password,
      });
      emit(RegisterSuccessState());
    } catch (e) {
      showToastWhenRegister(context);
      emit(RegisterErrorState());
    }

  }
  /// save jobs
  var newJobId;
  Future<void> saveJob(jobId, id, token) async {
    String url = "http://164.92.246.77/api/favorites";
    var dio = Dio();
    Response response = await dio.post(url, data: {'job_id': jobId,'user_id': id});
    dio.options.headers['Authorization'] = 'Bearer $token';
    response = await dio.post(url, data: {'job_id': jobId,'user_id': id});

    MyCache.saveData(key: 'newJobId', value: response.data['data']['id'] );
    newJobId = MyCache.getData(key: 'newJobId')!;
  }
  /// get saved jobs list

  List<JobsModel> savedJobsList = [];
  Future<List> getSavedJobs(id) async {
    List<dynamic> data = await Api().get(url:'http://164.92.246.77/api/favorites/$id');
    List<JobsModel> jobs = data.map((job) =>
        JobsModel.fromJson(job)).toList();
    savedJobsList = jobs;
    emit(GetSavedJobsSuccessState());
    // MyCache.saveData(key: 'newJobId', value: savedJobsList.last );
    // print('sahhhhhdhdlllllllllllllll');
    // print(savedJobsList['id']);
    // newJobId = MyCache.getData(key: 'newJobId')!;
    return data;
  }

  Future<void> deleteJob(jobId, token) async {
    String url = "http://164.92.246.77/api/favorites/$jobId";
    Response response;
    var dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    emit(deleteJobState());
    response = await dio.delete(url,);
    print(response.data);

  }
  Future<Response?> editProfile(token,userID, String name,
      String bio, String address, String mobile) async {
   try {
     networkService.dio.options.headers['Authorization'] = 'Bearer $token';
     Response response = await networkService.put(
         'http://164.92.246.77/api/user/profile/edit/${userID}',
         {'bio': bio, 'address': address, 'mobile': mobile, 'name': name});
   }catch(e){
     print(e.toString());
   }
  }
  Future<Response?> updateProfile(token,userID,interestedWork,onsitePlace,remotePlace) async {
   try {
     networkService.dio.options.headers['Authorization'] = 'Bearer $token';
     Response response = await networkService.put(
         'http://164.92.246.77/api/user/profile/${userID}',
         {
           'interested_work': interestedWork,
           'offline_place': onsitePlace,
           'remote_place': remotePlace
         });
   }catch(e) {
     print(e.toString());
   }
  }


  List<JobsModel> searchList = [];
  void searchJobs(String query) {
    if (query==""){
      searchList=[];
      emit(deleateSearchState());
    }else{
      searchList =  jobsList.where((job) =>
          job.name!.toLowerCase().contains(query.toLowerCase())).toList();
      emit(searchState());
    }
  }
  // Future<void> registerr(name,email,password) async {
  //   String url = "http://164.92.246.77/api/auth/register";
  //   Response response;
  //   var dio = Dio();
  //   response = await dio.post(url,
  //       data: {
  //         'name':name,
  //         'email':email,
  //         'password':password,
  //       });
  //   print(response.data);
  // }
}
