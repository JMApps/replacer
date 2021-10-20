import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/sign_content_text_field_state.dart';
import 'package:replacer/provider/switch_sign_button_state.dart';

class SignContentTextField extends StatelessWidget {
  const SignContentTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        textInputAction: TextInputAction.done,
        controller: context.watch<SignContentTextFieldState>().getSignContentInputTextController,
        enabled: context.watch<SwitchSignButtonState>().getButtonState,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: const Icon(CupertinoIcons.delete_left_fill),
            onTap: () {
              context.read<SignContentTextFieldState>().clearAll();
            },
          ),
          border: const OutlineInputBorder(),
          labelText: 'Введите подпись',
        ),
        onChanged: (text) {
          context.read<SignContentTextFieldState>().updateSignContentInputText(text);
        },
      ),
    );
  }
}
