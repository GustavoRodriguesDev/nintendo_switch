// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/Lamp_grup.dart';
import 'package:nintendo_switch/componentes/btnMenos.dart';
import 'package:nintendo_switch/componentes/componente%20bot%C3%B5es/lamp.dart';
import 'package:nintendo_switch/componentes/control.dart';
import 'package:nintendo_switch/componentes/plusButton.dart';
import 'package:nintendo_switch/componentes/actionButton.dart';
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
        color: Color(0xFF32383A),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // BigButton(size: 59),
            // SoundButton(),
            // HomeButton(size: 29),
            // DirectionalButton(),
            // ActionButton(),
            // PLusButton(),
            // BtnMenos(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Control(
                  alignControl: Alignment.bottomLeft,
                  colorControl: Color(0xFF00BDDD),
                  heightControl: 257,
                  widthControl: 123,
                  radiusControl: BorderRadius.only(
                    topRight: Radius.circular(80),
                  ),
                ),
                LampGroup(),
                FlutterLogo(),
                LampGroup(),
                Control(
                  alignControl: Alignment.bottomRight,
                  colorControl: Color(0xFFFF5F53),
                  heightControl: 257,
                  widthControl: 123,
                  radiusControl: BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
