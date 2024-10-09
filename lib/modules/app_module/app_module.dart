import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/app_module/interactor/atoms/app_atoms.dart';
import 'package:password_v2/modules/app_module/interactor/reducers/app_reducer.dart';
import 'package:password_v2/modules/home_module/home_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addSingleton(AppAtoms.new);
    i.addSingleton(AppReducer.new);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.module('/', module: HomeModule());
  }
}
