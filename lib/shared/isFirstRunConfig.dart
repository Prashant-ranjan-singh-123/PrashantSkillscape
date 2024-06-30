// import 'package:ShoeHaven/shared/shared_pref_variable.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class CheckFirstRun{
//   static Future<bool> isFirstRunOnboard() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     bool? isFisrtRun = await pref.getBool(MySharedPrefVariable.firstRunVariableOnboard);
//     isFisrtRun ??= true;

//     if(isFisrtRun){
//       return true;
//     }else{
//       return false;
//     }
//   }

//   static setFirstRunBoolOnboardFalse() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool(MySharedPrefVariable.firstRunVariableOnboard, false);
//   }

//   static Future<bool> isFirstRunHomeTutorial() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     bool? isFisrtRun = await pref.getBool(MySharedPrefVariable.firstRunVariableHomeTutorial);
//     isFisrtRun ??= true;

//     if(isFisrtRun){
//       return true;
//     }else{
//       return false;
//     }
//   }

//   static setFirstRunBoolHomeTutorialFalse() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     await pref.setBool(MySharedPrefVariable.firstRunVariableHomeTutorial, false);
//   }
// }