// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/plusButton.dart';

class ControlLeft extends StatelessWidget {
  const ControlLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
        color: Color(0xFFFF5F53),
      ),
      child: PLusButton(),
    );
  }
}
