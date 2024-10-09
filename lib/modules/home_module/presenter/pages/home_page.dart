import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/app_module/interactor/reducers/app_reducer.dart';

class HomePage extends StatelessWidget {
  final appReducer = Modular.get<AppReducer>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            appReducer.changeThemeMode(ThemeMode.light);
          }, child: Text('Trocar Tema'))
        ],
      ),
    );
  }
}
