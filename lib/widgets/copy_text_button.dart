import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';
import 'package:replacer/provider/sign_content_text_field_state.dart';
import 'package:replacer/provider/switch_sign_button_state.dart';

class CopyTextButton extends StatelessWidget {
  const CopyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Копировать'),
      icon: const Icon(Icons.copy),
        onPressed: context.watch<MainContentTextFieldState>().getMainContentInputText.isNotEmpty ? () {
          context.read<SwitchSignButtonState>().getButtonState &&
              context.read<SignContentTextFieldState>().getSignContentInputText.isNotEmpty ?
          FlutterClipboard.copy('${context.read<MainContentTextFieldState>().getMainContentInputText}\n\n'
              '${context.read<SignContentTextFieldState>().getSignContentInputText}') :
          FlutterClipboard.copy(context.read<MainContentTextFieldState>().getMainContentInputText);
        } : null
    );
  }
}
