abstract class JobsStates {}

class NewsInitialState extends JobsStates{}

class NewsNtmNavState extends JobsStates{}

class GetJobsSuccessState extends JobsStates{}

// class NewsGetLoadingsState extends JobsStates{}
//
// class NewsGetBusinessErrorState extends JobsStates{
//   final String error;
//   NewsGetBusinessErrorState(this.error);
// }