import 'package:shared_preferences/shared_preferences.dart';

const ACCESStOKE = 'access_token';
const REFRESHTOKE = 'refresh_token';
const USERNAME = 'username';

class LocalStorage {
  Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(ACCESStOKE);
  }

  Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(REFRESHTOKE);
  }

    Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(USERNAME);
  }

  Future setAccessToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(ACCESStOKE, value);
  }

  Future setRefeshToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(REFRESHTOKE, value);
  }

  
  Future setUserName(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(USERNAME, value);
  }

  // Future<String?> getStringStorage(String key) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return  prefs.getString(key);
  // }


  Future<bool> clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }

}
