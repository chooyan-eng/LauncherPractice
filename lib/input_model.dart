import 'package:flutter/material.dart';

class InputModel extends ChangeNotifier {
  var _email = '';

  String get email => _email;
  set email(String value) {
    _email = value;
    controller.text = value;
    notifyListeners();
  }

  var _controller = TextEditingController();
  TextEditingController get controller => _controller;

  void deleteEmail() {
    email = '';
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}