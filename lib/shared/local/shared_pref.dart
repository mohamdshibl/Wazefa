import 'package:shared_preferences/shared_preferences.dart';

import '../../view/profile/profile.dart';

class MyCache {
  static SharedPreferences? preferences;



  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }


  static Future<bool?> saveData({required String key,required dynamic value}) async{

    if (value is String ) return await preferences?.setString(key, value);
    if (value is int ) return await preferences?.setInt(key, value);
    if (value is bool ) return await preferences?.setBool(key, value);

     return await preferences?.setDouble(key, value);
  }

  static dynamic getData({required String key}){
    return preferences?.get(key);
  }

  // static void putString(
  //     {required String key, required String value}) async {
  //   await preferences?.setString(key, value);
  // }
  //
  // static String getString({required String key,}) {
  //   return preferences?.getString(key) ?? '';
  // }
  //
  // static void putBoolean(
  //     {required MyCacheKeys key, required bool value}) async {
  //   await preferences?.setBool(key.name, value);
  // }
  //
  // static bool getBoolean({required MyCacheKeys key,}) {
  //   return preferences?.getBool(key.name,) ?? false;
  // }
  //
  // static void putInt({required MyCacheKeys key, required int value}) async {
  //   await preferences?.setInt(key.name, value);
  // }
  //
  // static int getInt({required MyCacheKeys key,}) {
  //   return preferences?.getInt(key.name,) ?? 0;
  // }
  //
  // static void putDouble(
  //     {required MyCacheKeys key, required double value}) async {
  //   await preferences?.setDouble(key.name, value);
  // }
  //
  // static double getDouble({required MyCacheKeys key,}) {
  //   return preferences?.getDouble(key.name,) ?? 0.0;
  // }
  //
  // static Future<void> removeFromShared({required MyCacheKeys key,}) async {
  //   await preferences?.remove(key.name);
  // }
  //
  //
  // static Future<void> clearShared() async {
  //   await preferences?.clear();
  // }
}