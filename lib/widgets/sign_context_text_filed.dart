import 'package:flutter/material.dart';

class SignContentTextField extends StatelessWidget {
  const SignContentTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Введите подпись',
        ),
      ),
    );
  }
}
