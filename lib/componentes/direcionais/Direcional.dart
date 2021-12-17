// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'dart:math';

import 'package:flutter/material.dart';

class Direcional extends StatelessWidget {
  final double containerUm;
  final double containerDOis;
  final double sizeIcom;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;
  final double angule;
  final String? letterButton;
  const Direcional({
    Key? key,
    required this.containerUm,
    required this.containerDOis,
    required this.gradientBegin,
    required this.gradientEnd,
    required this.sizeIcom,
    required this.angule,
    this.letterButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerUm,
      width: containerUm,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: gradientBegin,
          end: gradientEnd,
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
        child: letterButton != null
            ? Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    letterButton!,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              )
            : Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(angule * pi / 180),
                child: Icon(
                  Icons.play_arrow,
                  size: sizeIcom,
                ),
              ),
      ),
    );
  }
}
