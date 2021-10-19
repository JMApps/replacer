import 'package:flutter/material.dart';

class MainContentTextFieldState with ChangeNotifier {
  final _mainContentInputTextController = TextEditingController();

  TextEditingController get getMainContentInputTextController => _mainContentInputTextController;

  String _mainContentInputText = '';

  String get getMainContentInputText => _mainContentInputText;

  updateMainContentInputText(String newText) {
    _mainContentInputText = newText;
    notifyListeners();
  }

  clearAll() {
    _mainContentInputTextController.clear();
    _mainContentInputText = _mainContentInputTextController.text;
    notifyListeners();
  }
}