import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/switch_sign_button_state.dart';

class SwitchSignContent extends StatelessWidget {
  const SwitchSignContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Подписывать сообщения'),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      activeColor: Colors.blue,
      value: context.watch<SwitchSignButtonState>().getButtonState,
      onChanged: (value) {
        context.read<SwitchSignButtonState>().updateButtonState(value);
      },
    );
  }
}
