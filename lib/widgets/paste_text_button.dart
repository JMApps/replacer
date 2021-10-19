import 'package:flutter/material.dart';

class PasteTextButton extends StatelessWidget {
  const PasteTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Вставить'),
      icon: const Icon(Icons.paste),
      onPressed: () {},
    );
  }
}
