// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BotaoPequeno extends StatelessWidget {
  final double size;

  final double? sizeIcom;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;
  final double? angule;
  final String? letterButton;
  const BotaoPequeno({
    Key? key,
    required this.size,
    required this.gradientBegin,
    required this.gradientEnd,
    this.sizeIcom,
    this.angule,
    this.letterButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (letterButton != null) {}

    return Container(
      height: size,
      width: size,
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
        width: size * 0.78,
        height: size * 0.78,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF686D70),
              Color(0xFF050F11),
            ],
          ),
        ),
        child: letterButton != null
            ? LayoutBuilder(builder: (context, constraints) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      letterButton!,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth * 0.68,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                );
              })
            : LayoutBuilder(builder: (context, constraints) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(angule! * pi / 180),
                  child: Icon(
                    Icons.play_arrow,
                    size: constraints.maxWidth * 0.68,
                  ),
                );
              }),
      ),
    );
  }
}
