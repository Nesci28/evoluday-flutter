import 'package:flutter/material.dart';

import '../../constants/colors.constant.dart';

Widget primaryButton(String title, void Function()? fn) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
    child: ElevatedButton(
      onPressed: fn,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: const StadiumBorder(),
        backgroundColor: bPrimaryColor,
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
