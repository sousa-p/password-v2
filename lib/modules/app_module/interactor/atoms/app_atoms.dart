import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppAtoms extends Disposable {
  final themeMode = atom<ThemeMode>(ThemeMode.system);
  final themeData = atom<ThemeData?>(null);

  @override
  void dispose() {
    themeMode.dispose();
    themeData.dispose();
  }
}
