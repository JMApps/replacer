import 'package:flutter/material.dart';

class MainContentTextFieldState with ChangeNotifier {
  final _mainContentInputTextController = TextEditingController();

  TextEditingController get getMainContentInputTextController => _mainContentInputTextController;

  String _mainContentInputText = '';

  String get getMainContentInputText => _mainContentInputText;

  final List<String> coded = ['а', 'о', 'с', 'х', 'р', 'у',];
  final List<String> decoded = ['a', 'o', 'c', 'x', 'p', 'y'];

  updateMainContentInputText(String newText) {
    _mainContentInputText = newText;
    notifyListeners();
  }

  clearAll() {
    _mainContentInputTextController.clear();
    _mainContentInputText = _mainContentInputTextController.text;
    notifyListeners();
  }

  replaceAllText() {
    Map<String, String> map = Map.fromIterables(coded, decoded);
    _mainContentInputText = map.entries.fold(_mainContentInputText, (previousValue, element) => previousValue.replaceAll(element.key, element.value));
    notifyListeners();
  }
}