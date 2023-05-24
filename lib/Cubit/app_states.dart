abstract class JobsStates {}

class NewsInitialState extends JobsStates{}

class NewsNtmNavState extends JobsStates{}

class GetJobsSuccessState extends JobsStates{}
class GetSavedJobsSuccessState extends JobsStates{}

class loginLoadingsState extends JobsStates{}

class LoginSuccessState extends JobsStates{}
class RegisterSuccessState extends JobsStates{}

class deleateSearchState extends JobsStates{}
class deleteJobState extends JobsStates{}

class searchState extends JobsStates{}

class LoginErrorState extends JobsStates{}
class RegisterErrorState extends JobsStates{}


// class NewsGetLoadingsState extends JobsStates{}
//
// class NewsGetBusinessErrorState extends JobsStates{
//   final String error;
//   NewsGetBusinessErrorState(this.error);
// }