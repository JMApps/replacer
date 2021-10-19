import 'package:flutter/material.dart';

class SwitchSignButtonState with ChangeNotifier {
  bool _buttonState = false;

  bool get getButtonState => _buttonState;

  updateButtonState(bool newState) {
    _buttonState = newState;
    notifyListeners();
  }
}