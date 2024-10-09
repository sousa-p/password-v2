import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/app_module/interactor/atoms/app_atoms.dart';

class AppReducer extends Disposable {
  final changeThemeMode = atomAction1((set, ThemeMode themeMode) {
    final appAtoms = Modular.get<AppAtoms>();
    set(appAtoms.themeMode, themeMode);
  });

  final changeThemeData = atomAction1((set, Color color) {
    final appAtoms = Modular.get<AppAtoms>();
    
    final colorScheme = ColorScheme.fromSeed(seedColor: color);
    final theme = ThemeData.from(colorScheme: colorScheme);

    set(appAtoms.themeData, theme);
  });

  @override
  void dispose() {}
}
