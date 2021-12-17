// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DirecionalDonw extends StatelessWidget {
  final double? containerUm;
  final double? containerDOis;
  final double? sizeIcom;
  const DirecionalDonw(
      {Key? key,
      required this.containerUm,
      required this.containerDOis,
      required this.sizeIcom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerUm,
      width: containerUm,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF050F11),
            Color(0xFF7B8287),
          ],
          stops: [0.10, 9.0],
        ),
      ),
      child: Container(
        width: containerDOis,
        height: containerDOis,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF686D70),
                Color(0xFF050F11),
              ]),
        ),
        child: RotatedBox(
          quarterTurns: 5,
          child: Icon(
            Icons.play_arrow,
            size: sizeIcom,
          ),
        ),
      ),
    );
  }
}
