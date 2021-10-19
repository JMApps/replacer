import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replacer/provider/main_content_text_field_state.dart';
import 'package:replacer/provider/sign_content_text_field_state.dart';
import 'package:replacer/provider/switch_sign_button_state.dart';
import 'package:replacer/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainContentTextFieldState()),
        ChangeNotifierProvider(create: (_) => SwitchSignButtonState()),
        ChangeNotifierProvider(create: (_) => SignContentTextFieldState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().appGeneratorRoute,
        initialRoute: '/',
        title: 'Заменитель',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
      ),
    );
  }
}
