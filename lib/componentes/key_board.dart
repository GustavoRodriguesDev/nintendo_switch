// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/action_button.dart';
import 'package:nintendo_switch/componentes/big_button.dart';
import 'package:nintendo_switch/componentes/btn_menos.dart';
import 'package:nintendo_switch/componentes/directional_button.dart';
import 'package:nintendo_switch/componentes/home_button.dart';
import 'package:nintendo_switch/componentes/plus_button.dart';
import 'package:nintendo_switch/componentes/sound_button.dart';

enum Side { left, right }

class Keybord extends StatelessWidget {
  final Side side;
  final double width;
  final double heigth;
  late Widget? child;

  Keybord({
    Key? key,
    this.width = 123,
    this.heigth = 257,
    required this.side,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (side) {
      case Side.left:
        decoration = BoxDecoration(
          color: Color(0xFF00BDDD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(width * 0.65),
          ),
        );

        child = Padding(
          padding: EdgeInsets.all(heigth * 0.04),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BtnMenos(
                  size: heigth * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        BigButton(
                          size: heigth * 0.22,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        DirectionalButton(size: width * 0.69),
                      ],
                    ),
                  ],
                ),
                SoundButton(size: heigth * 0.09),
              ],
            );
          }),
        );
        break;
      case Side.right:
        decoration = BoxDecoration(
          color: Color(0xFFFF5F53),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.65),
          ),
        );

        child = Padding(
          padding: EdgeInsets.all(heigth * 0.04),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PLusButton(
                  size: heigth * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ActionButton(size: width * 0.69),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        BigButton(
                          size: heigth * 0.22,
                        ),
                      ],
                    ),
                  ],
                ),
                HomeButton(size: width * 0.24),
              ],
            );
          }),
        );
        break;
      default:
    }

    return Container(
      width: width,
      height: heigth,
      child: child,
      decoration: decoration,
    );
  }
}
