// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unnecessary_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum Position {
  left,
  down,
  right,
  up,
}

class BotaoPequeno extends StatelessWidget {
  final Position align;
  final double size;

  final String? letterButton;
  late Widget? typeAction;
  late Decoration? decoration;

  BotaoPequeno(
      {Key? key,
      required this.size,
      this.letterButton,
      required this.align,
      this.typeAction,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (align) {
      case Position.up:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF050F11),
              Color(0xFF7B8287),
            ],
            stops: [0.10, 9.0],
          ),
        );
        break;
      case Position.right:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF050F11),
              Color(0xFF7B8287),
            ],
            stops: [0.10, 9.0],
          ),
        );
        break;
      case Position.left:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF050F11),
              Color(0xFF7B8287),
            ],
            stops: [0.10, 9.0],
          ),
        );
        break;
      case Position.down:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF050F11),
              Color(0xFF7B8287),
            ],
            stops: [0.10, 9.0],
          ),
        );
        break;
      default:
    }

    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      decoration: decoration,
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
        child: typeAction,
      ),
    );
  }
}
