import 'package:flutter/material.dart';
import 'package:replacer/widgets/clear_text_button.dart';
import 'package:replacer/widgets/copy_text_button.dart';
import 'package:replacer/widgets/main_context_text_filed.dart';
import 'package:replacer/widgets/paste_text_button.dart';
import 'package:replacer/widgets/sign_context_text_filed.dart';
import 'package:replacer/widgets/switch_sign_content.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        title: const Text(
          'Заменитель',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            const MainContentTextField(),
            const Divider(indent: 16, endIndent: 16),
            const SwitchSignContent(),
            const Divider(indent: 16, endIndent: 16),
            const SignContentTextField(),
            const Divider(indent: 16, endIndent: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                PasteTextButton(),
                CopyTextButton(),
                ClearTextButton(),
              ],
            ),
            const Divider(indent: 16, endIndent: 16),
          ],
        ),
      ),
    );
  }
}
