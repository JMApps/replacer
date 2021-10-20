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
        onPressed: context.watch<MainContentTextFieldState>().getMainContentInputTextController.text.isNotEmpty ? () {
        context.read<MainContentTextFieldState>().replaceAllText();
          context.read<SwitchSignButtonState>().getButtonState &&
              context.read<SignContentTextFieldState>().getSignContentInputTextController.text.isNotEmpty ?
          FlutterClipboard.copy('${context.read<MainContentTextFieldState>().getMainContentInputText}\n\n'
              '${context.read<SignContentTextFieldState>().getSignContentInputTextController.text}') :
          FlutterClipboard.copy(context.read<MainContentTextFieldState>().getMainContentInputText);
        _showMessage(context);
        } : null
    );
  }

  _showMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(8),
        backgroundColor: Colors.blue,
        content: Text(
          'Скопировано',
          style: TextStyle(fontSize: 18),
        ),
        duration: Duration(milliseconds: 500),
      ),
    );
  }
}
