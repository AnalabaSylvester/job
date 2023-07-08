import 'package:flutter/material.dart';

class LoginNotifier extends ChangeNotifier {
  bool _osbscureText = true;

  bool get obscureText => _osbscureText;

  set obscureText(bool newState) {
    _osbscureText = newState;
    notifyListeners();
  }
}
