import 'package:flutter/material.dart';

class SwitchSignContent extends StatelessWidget {
  const SwitchSignContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Подписывать сообщения'),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      activeColor: Colors.blue,
      value: false,
      onChanged: (value) {

      },
    );
  }
}
