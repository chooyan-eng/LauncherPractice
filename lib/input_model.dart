import 'package:flutter/material.dart';

class InputModel extends ChangeNotifier {
  var _email = '';

  String get email => _email;
  set email(String value) {
    _email = value;
    notifyListeners();
  }
}