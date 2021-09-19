import 'package:example/app/modules/menu/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ModularState<SettingsPage, SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}
