import 'package:flutter/material.dart';

class SignContentTextFieldState with ChangeNotifier {
  final _signContentInputTextController = TextEditingController();

  TextEditingController get getSignContentInputTextController => _signContentInputTextController;

  String _signContentInputText = '';

  String get getSignContentInputText => _signContentInputText;

  updateSignContentInputText(String newText) {
    _signContentInputText = newText;
    notifyListeners();
  }

  clearAll() {
    _signContentInputTextController.clear();
    _signContentInputText = _signContentInputTextController.text;
    notifyListeners();
  }
}