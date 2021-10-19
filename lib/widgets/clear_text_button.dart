import 'package:flutter/material.dart';

class ClearTextButton extends StatelessWidget {
  const ClearTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: const Text('Очистить'),
      icon: const Icon(Icons.clear),
      onPressed: () {},
    );
  }
}
