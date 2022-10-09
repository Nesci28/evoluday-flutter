import 'package:flutter/material.dart';

import '../../widgets/auth/bottom.widget.dart';
import '../../widgets/auth/center.widget.dart';
import '../../widgets/auth/forgot/forgot-content.widget.dart';
import '../../widgets/auth/top.widget.dart';

class ForgotPage extends StatefulWidget {
  static const routeName = '/forgot';

  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
          const ForgotContentWidget(),
        ],
      ),
    );
  }
}
