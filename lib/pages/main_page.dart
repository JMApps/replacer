import 'package:flutter/material.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';
import 'package:replacer/widgets/clear_text_button.dart';
import 'package:replacer/widgets/copy_text_button.dart';
import 'package:replacer/widgets/main_context_text_filed.dart';
import 'package:replacer/widgets/paste_text_button.dart';
import 'package:replacer/widgets/sign_context_text_filed.dart';
import 'package:replacer/widgets/switch_sign_content.dart';
import 'package:provider/provider.dart';

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
          children: const [
            MainContentTextField(),
            Divider(indent: 16, endIndent: 16),
            SwitchSignContent(),
            Divider(indent: 16, endIndent: 16),
            SignContentTextField(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: const [
            PasteTextButton(),
            CopyTextButton(),
            ClearTextButton(),
          ],
        ),
      ),
    );
  }
}
