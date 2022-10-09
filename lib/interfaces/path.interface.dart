import 'package:flutter/cupertino.dart';

class Routing {
  Routing({
    required this.path,
    required this.page,
  });

  String path;
  StatelessWidget page;
}
