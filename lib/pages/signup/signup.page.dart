import 'package:flutter/material.dart';

import '../../widgets/auth/bottom.widget.dart';
import '../../widgets/auth/center.widget.dart';
import '../../widgets/auth/signup/signup-content.widget.dart';
import '../../widgets/auth/top.widget.dart';

class SignupPage extends StatefulWidget {
  static const routeName = '/signup';

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
          const SignupContentWidget(),
        ],
      ),
    );
  }
}
