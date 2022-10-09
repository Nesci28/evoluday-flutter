import 'package:flutter/material.dart';

class CenterClipperWidget extends CustomClipper<Path> {
  final Path path;

  const CenterClipperWidget({required this.path});

  @override
  Path getClip(Size size) {
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
