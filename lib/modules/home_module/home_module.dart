import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/home_module/presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(
      '/home/',
      child: (BuildContext context) => HomePage(),
    );
  }
}
