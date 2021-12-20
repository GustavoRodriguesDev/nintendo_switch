// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/actionButton.dart';
import 'package:nintendo_switch/componentes/bigButton.dart';
import 'package:nintendo_switch/componentes/homeButton.dart';
import 'package:nintendo_switch/componentes/plusButton.dart';

class ControlLeft extends StatelessWidget {
  const ControlLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 257,
      width: 123,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
        color: Color(0xFFFF5F53),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: PLusButton(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ActionButton(),
            ),
            Align(
              alignment: Alignment.center,
              child: BigButton(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: HomeButton(size: 30),
            )
          ],
        ),
      ),
    );
  }
}
