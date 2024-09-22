import 'package:flutter/material.dart';
import 'package:password_v2/modules/app_module/data/entities/theme_entity.dart';

extension ThemeEntityDto on ThemeEntity {
  static ThemeEntity empty() {
    return const ThemeEntity(
      themeMode: ThemeMode.system,
      themeData: null,
    );
  }
}
