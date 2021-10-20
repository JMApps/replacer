import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';

class PasteTextButton extends StatelessWidget {
  const PasteTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Вставить'),
      icon: const Icon(Icons.paste),
      onPressed: () {
        FlutterClipboard.paste().then((value) {
          context.read<MainContentTextFieldState>().updateMainContentInputText(value);
          context.read<MainContentTextFieldState>().getMainContentInputTextController.text = value;
        });
      },
    );
  }
}
