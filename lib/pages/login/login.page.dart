import 'package:flutter/material.dart';

import '../../widgets/auth/bottom.widget.dart';
import '../../widgets/auth/center.widget.dart';
import '../../widgets/auth/login/login-content.widget.dart';
import '../../widgets/auth/top.widget.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topWidget(screenSize.width),
          ),
          Positioned(
            bottom: -180,
            left: -40,
            child: bottomWidget(screenSize.width),
          ),
          CenterWidget(size: screenSize),
          const LoginContentWidget(),
        ],
      ),
    );
  }
}
