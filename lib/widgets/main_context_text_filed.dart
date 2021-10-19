import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';

class MainContentTextField extends StatelessWidget {
  const MainContentTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Scrollbar(
        child: TextField(
          controller: context.watch<MainContentTextFieldState>().getMainContentInputTextController,
          minLines: 10,
          maxLines: 15,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Введите текст',
            alignLabelWithHint: true
          ),
          onChanged: (text) {
            context.read<MainContentTextFieldState>().updateMainContentInputText(text);
          },
        ),
      ),
    );
  }
}
