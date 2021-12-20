// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors

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

  Control(
      {required this.colorControl,
      required this.alignControl,
      required this.heightControl,
      required this.widthControl,
      required this.radiusControl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 257,
      width: 123,
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
              child: PLusButton(),
            ),
            Align(
              alignment: alignControl,
              child: ActionButton(),
            ),
            Align(
              alignment: alignControl,
              child: BigButton(),
            ),
            Align(
              alignment: alignControl,
              child: HomeButton(size: 30),
            )
          ],
        ),
      ),
    );
  }
}
