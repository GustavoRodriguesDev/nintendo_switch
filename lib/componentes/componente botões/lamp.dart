// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';

class Lamp extends StatelessWidget {
  const Lamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF222327),
      ),
    );
  }
}
