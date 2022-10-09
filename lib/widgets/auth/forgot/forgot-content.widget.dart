import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../pages/login/login.page.dart';
import '../../buttons/primary.widget.dart';
import '../../inputs/text.widget.dart';
import '../../texts/link.widget.dart';
import '../../texts/title.widget.dart';

enum Pages {
  createAccount,
  welcomeBack,
}

class ForgotContentWidget extends StatelessWidget {
  const ForgotContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 136,
          left: 24,
          child: TitleWidget(title: "Mot de passe oublié"),
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
                  primaryButton("Confirmer", () => print("confirmer")),
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
                  context, "Vous avez déjà un compte?", LoginPage.routeName)),
        ),
      ],
    );
  }
}
