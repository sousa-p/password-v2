import 'package:shared_preferences/shared_preferences.dart';

class ThemeDatasourceLocal {
  final SharedPreferences prefs;

  ThemeDatasourceLocal(
    this.prefs,
  );
}