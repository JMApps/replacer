import 'package:flutter/material.dart';

class CopyTextButton extends StatelessWidget {
  const CopyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Копировать'),
      icon: const Icon(Icons.copy),
      onPressed: () {},
    );
  }
}
