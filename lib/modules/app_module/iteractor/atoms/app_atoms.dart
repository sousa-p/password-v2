import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:password_v2/modules/app_module/data/dto/theme_entity_dto.dart';
import 'package:password_v2/modules/app_module/data/entities/theme_entity.dart';

class AppAtoms extends Disposable {
  final theme = atom<ThemeEntity>(ThemeEntityDto.empty());

  @override
  void dispose() {
    theme.dispose();
  }
}
