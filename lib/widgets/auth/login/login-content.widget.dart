import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../pages/forgot/forgot.page.dart';
import '../../../pages/signup/signup.page.dart';
import '../../buttons/primary.widget.dart';
import '../../inputs/text.widget.dart';
import '../../texts/link.widget.dart';
import '../../texts/title.widget.dart';

enum Pages {
  createAccount,
  welcomeBack,
}

class LoginContentWidget extends StatelessWidget {
  const LoginContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 136,
          left: 24,
          child: TitleWidget(title: "Se connecter"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  inputField("Email", Ionicons.mail_outline),
                  inputField("Password", Ionicons.lock_closed_outline),
                  primaryButton("Connecter", () => print("connected")),
                  linkText(
                      context, "Mot de passe oublié?", ForgotPage.routeName)
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: linkText(
                  context, "Vous n'avez pas de compte?", SignupPage.routeName)),
        ),
      ],
    );
  }
}
