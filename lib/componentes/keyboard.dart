// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/actionButton.dart';
import 'package:nintendo_switch/componentes/bigButton.dart';
import 'package:nintendo_switch/componentes/btnMenos.dart';
import 'package:nintendo_switch/componentes/directionalButton.dart';
import 'package:nintendo_switch/componentes/homeButton.dart';
import 'package:nintendo_switch/componentes/plusButton.dart';
import 'package:nintendo_switch/componentes/soundButton.dart';

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
        decoration = const BoxDecoration(
          color: Color(0xFF00BDDD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80),
          ),
        );

        child = Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BtnMenos(),
              ),
              Align(
                alignment: Alignment.center,
                child: BigButton(),
              ),
              Align(
                alignment: Alignment.center,
                child: DirectionalButton(),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SoundButton(size: 23.5),
              ),
            ],
          ),
        );
        break;
      case Side.right:
        decoration = const BoxDecoration(
          color: Color(0xFFFF5F53),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
          ),
        );
        child = Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: PLusButton(),
              ),
              Align(
                alignment: Alignment.center,
                child: ActionButton(),
              ),
              Align(
                alignment: Alignment.center,
                child: BigButton(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: HomeButton(size: 29),
              )
            ],
          ),
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
