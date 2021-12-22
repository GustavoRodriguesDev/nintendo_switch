// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/logo.dart';

class ScreenBlack extends StatelessWidget {
  final double paddingTop;
  final double paddingSide;
  final double height;
  final double widith;
  const ScreenBlack(
      {Key? key,
      required this.paddingTop,
      required this.paddingSide,
      required this.height,
      required this.widith})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
        left: paddingSide,
        right: paddingSide,
      ),
      child: Container(
        height: height,
        width: widith,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Color(0xFF000000),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Logo(
            size: constraints.maxWidth * 0.35,
          );
        }),
      ),
    );
  }
}
