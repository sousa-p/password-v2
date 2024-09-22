import 'package:flutter/material.dart';

class ThemeEntity {
  final ThemeMode themeMode;
  final ThemeData? themeData;

  const ThemeEntity({
    required this.themeMode,
    required this.themeData,
  });
}