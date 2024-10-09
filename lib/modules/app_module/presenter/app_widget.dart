import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/app_module/interactor/atoms/app_atoms.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final appAtoms = Modular.get<AppAtoms>();

  @override
  Widget build(BuildContext context) {
    final themeData = appAtoms.themeData.state;
    final themeMode = appAtoms.themeMode.state;

    return MaterialApp.router(
      title: 'Password',
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      theme: themeData,
      darkTheme: themeData,
      themeMode: themeMode,
    );
  }
}
