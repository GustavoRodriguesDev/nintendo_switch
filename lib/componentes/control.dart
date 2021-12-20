// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/actionButton.dart';
import 'package:nintendo_switch/componentes/bigButton.dart';
import 'package:nintendo_switch/componentes/homeButton.dart';
import 'package:nintendo_switch/componentes/plusButton.dart';

class Control extends StatelessWidget {
  Color colorControl;
  AlignmentGeometry alignControl;
  double heightControl;
  double widthControl;
  BorderRadius radiusControl;
  Widget btn1, btn2, btn3, btn4;

  Control({
    required this.colorControl,
    required this.alignControl,
    required this.heightControl,
    required this.widthControl,
    required this.radiusControl,
    required this.btn1,
    required this.btn2,
    required this.btn3,
    required this.btn4,
  });

  @override
  Widget build(BuildContext context) {
    if (alignControl == Alignment.bottomRight) {}

    return Container(
      height: 257,
      width: 124,
      decoration: BoxDecoration(
        borderRadius: radiusControl,
        color: colorControl,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: alignControl,
              child: btn1,
            ),
            Align(
              alignment: Alignment.center,
              child: btn2,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: btn3,
            ),
            Align(
              alignment: alignControl,
              child: btn4,
            )
          ],
        ),
      ),
    );
  }
}
