import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';

class ClearTextButton extends StatelessWidget {
  const ClearTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Очистить'),
      icon: const Icon(Icons.clear),
      onPressed: context.watch<MainContentTextFieldState>().getMainContentInputText.isNotEmpty ? () {
        context.read<MainContentTextFieldState>().clearAll();
      } : null
    );
  }
}
