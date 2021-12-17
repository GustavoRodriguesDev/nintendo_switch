// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/bigButton.dart';
import 'package:nintendo_switch/componentes/directionalButton.dart';
import 'package:nintendo_switch/componentes/homeButton.dart';
import 'package:nintendo_switch/componentes/soundButton.dart';

class NintendoSwitch extends StatefulWidget {
  const NintendoSwitch({Key? key}) : super(key: key);

  @override
  _NintendoSwitchState createState() => _NintendoSwitchState();
}

class _NintendoSwitchState extends State<NintendoSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF32383A),
        child: Column(
          children: [
            BigButton(
              size: 300,
            ),
            SoundButton(),
            HomeButton(),
            DirectionalButton()
          ],
        ),
      ),
    );
  }
}
