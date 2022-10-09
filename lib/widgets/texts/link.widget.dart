import 'package:flutter/material.dart';

import '../../constants/colors.constant.dart';

Widget linkText(BuildContext context, String text, String route) {
  return TextButton(
    onPressed: () => Navigator.of(context).pushReplacementNamed(route),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: kSecondaryColor,
      ),
    ),
  );
}
