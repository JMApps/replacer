import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  saveLastSignText(String lastText) async {
    final preferences = await SharedPreferences.getInstance();
    preferences.setString('key_sign_content_text', lastText);
  }

  loadLastSignText() async {
    final preferences = await SharedPreferences.getInstance();
    _signContentInputTextController.text = preferences.getString('key_sign_content_text') ?? '';
  }
}