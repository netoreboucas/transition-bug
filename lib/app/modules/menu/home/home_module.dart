import 'package:example/app/modules/menu/home/home_controller.dart';
import 'package:example/app/modules/menu/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
