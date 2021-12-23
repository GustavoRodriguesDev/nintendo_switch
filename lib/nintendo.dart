// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/keyboard.dart';
import 'package:nintendo_switch/componentes/logo/logo.dart';
import 'package:nintendo_switch/componentes/screen_black.dart';
import 'componentes/lamp.dart';

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
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4B5054),
              Color(0xFF272B2E),
            ],
          ),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ScreenBlack(
                paddingTop: height * 0.037,
                paddingSide: width * 0.058,
                height: height * 0.53,
                widith: width * 0.88,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Keybord(
                    side: Side.left,
                    heigth: height * 0.38,
                    width: width * 0.32,
                  ),
                  SizedBox(
                    height: height * 0.074,
                    width: 10,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Lamp(
                            lampState: index == 0
                                ? Lampstate.lampOn
                                : Lampstate.lampOff,
                            size: height * 0.0082),
                      ),
                    ),
                  ),
                  Logo(size: constraints.maxWidth * 0.12, colors: Colors.black),
                  SizedBox(
                    height: height * 0.074,
                    width: 10,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Lamp(
                            lampState: Lampstate.lampOff,
                            size: height * 0.0082),
                      ),
                    ),
                  ),
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
