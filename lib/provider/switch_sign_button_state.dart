import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchSignButtonState with ChangeNotifier {
  bool _buttonState = false;

  bool get getButtonState => _buttonState;

  updateButtonState(bool newState) {
    _buttonState = newState;
    notifyListeners();
  }

  saveStateButton(bool state) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setBool('key_sign_button_state', state);
  }

  loadStateButton() async {
    final preferences = await SharedPreferences.getInstance();
    _buttonState = preferences.getBool('key_sign_button_state') ?? false;
  }
}