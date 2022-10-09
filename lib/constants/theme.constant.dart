import 'package:evoluday/constants/colors.constant.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(BuildContext context) {
  return ThemeData(
    // Scaffold
    scaffoldBackgroundColor: kBackgroundColor,

    // Text
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kPrimaryColor,
          fontFamily: 'Montserrat',
        ),

    // Inputs
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Colors.white,
    ),
  );
}
