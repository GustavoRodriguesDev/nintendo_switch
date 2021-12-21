// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/Lamp_grup.dart';
import 'package:nintendo_switch/componentes/keyboard.dart';

class NintendoSwitch extends StatefulWidget {
  const NintendoSwitch({Key? key}) : super(key: key);

  @override
  _NintendoSwitchState createState() => _NintendoSwitchState();
}

class _NintendoSwitchState extends State<NintendoSwitch> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Color(0xFF32383A),
        width: width,
        height: height,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 22,
                  right: 22,
                ),
                child: Container(
                  height: height * 0.53,
                  width: width * 0.88,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color(0xFF000000)),
                ),
              ),
              // BigButton(size: 59),
              // SoundButton(),
              // HomeButton(size: 29),
              // DirectionalButton(),
              // ActionButton(),
              // PLusButton(),
              // BtnMenos(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Keybord(
                    side: Side.left,
                    heigth: height * 0.38,
                    width: width * 0.32,
                  ),
                  LampGroup(),
                  FlutterLogo(),
                  LampGroup(),
                  Keybord(
                    side: Side.right,
                    heigth: height * 0.38,
                    width: width * 0.32,
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
