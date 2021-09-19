import 'package:example/app/modules/menu/home/home_module.dart';
import 'package:example/app/modules/menu/menu_controller.dart';
import 'package:example/app/modules/menu/menu_page.dart';
import 'package:example/app/modules/menu/settings/settings_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => MenuController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => MenuPage(), children: [
      ModuleRoute('/home', module: HomeModule(), transition: TransitionType.noTransition),
      ModuleRoute('/settings', module: SettingsModule(), transition: TransitionType.noTransition),
    ]),
  ];
}
