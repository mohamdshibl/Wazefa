import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
  static SharedPreferences? sharedPreferences;
  static init() async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// bool
  static Future<bool> putBoolean({required String key,required bool value}) async{
    return await sharedPreferences!.setBool(key, value);
  }

  static bool? getBoolean({required String key}) {
    return  sharedPreferences!.getBool(key);
  }

}


// class MyCache {
//   static SharedPreferences? preferences;
//
//   static Future<void> init() async {
//     preferences = await SharedPreferences.getInstance();
//   }
//
//   static void putString(
//       {required MyCacheKeys key, required String value}) async {
//     await preferences?.setString(key.name, value);
//   }
//
//   static String getString({required MyCacheKeys key,}) {
//     return preferences?.getString(key.name,) ?? '';
//   }
//
//   static void putBoolean(
//       {required MyCacheKeys key, required bool value}) async {
//     await preferences?.setBool(key.name, value);
//   }
//
//   static bool getBoolean({required MyCacheKeys key,}) {
//     return preferences?.getBool(key.name,) ?? false;
//   }
//
//   static void putInt({required MyCacheKeys key, required int value}) async {
//     await preferences?.setInt(key.name, value);
//   }
//
//   static int getInt({required MyCacheKeys key,}) {
//     return preferences?.getInt(key.name,) ?? 0;
//   }
//
//   static void putDouble(
//       {required MyCacheKeys key, required double value}) async {
//     await preferences?.setDouble(key.name, value);
//   }
//
//   static double getDouble({required MyCacheKeys key,}) {
//     return preferences?.getDouble(key.name,) ?? 0.0;
//   }
//
//   static Future<void> removeFromShared({required MyCacheKeys key,}) async {
//     await preferences?.remove(key.name);
//   }
//
//
//   static Future<void> clearShared() async {
//     await preferences?.clear();
//   }
// }