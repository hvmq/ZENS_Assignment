import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static void saveLocal(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }
}
