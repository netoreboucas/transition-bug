import 'package:example/app/modules/menu/settings/settings_controller.dart';
import 'package:example/app/modules/menu/settings/settings_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => SettingsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SettingsPage()),
  ];
}
