import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';

class CopyTextButton extends StatelessWidget {
  const CopyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Копировать'),
      icon: const Icon(Icons.copy),
        onPressed: context.watch<MainContentTextFieldState>().getMainContentInputText.isNotEmpty ? () {
        } : null
    );
  }
}
