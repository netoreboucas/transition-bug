import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'menu_controller.g.dart';

class MenuController = _MenuControllerBase with _$MenuController;

abstract class _MenuControllerBase with Store {
  @observable
  int _currentIndex = 0;

  @computed
  int get currentIndex => _currentIndex;

  @computed
  set currentIndex(value) {
    _currentIndex = value;
    if (_currentIndex == 0) {
      Modular.to.navigate('/home');
    } else if (_currentIndex == 1) {
      Modular.to.navigate('/settings');
    }
  }
}
