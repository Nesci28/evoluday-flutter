import 'package:flutter/material.dart';

import 'constants/theme.constant.dart';
import 'pages/forgot/forgot.page.dart';
import 'pages/login/login.page.dart';
import 'pages/signup/signup.page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Evoluday",
        theme: getTheme(context),
        initialRoute: SignupPage.routeName,
        routes: {
          SignupPage.routeName: (context) => const SignupPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          ForgotPage.routeName: (context) => const ForgotPage(),
        });
  }
}
