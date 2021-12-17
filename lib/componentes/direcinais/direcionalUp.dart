// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DirecinalUp extends StatelessWidget {
  const DirecinalUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
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
        width: 160,
        height: 160,
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
          quarterTurns: 15,
          child: Icon(
            Icons.play_arrow,
            size: 70,
          ),
        ),
      ),
    );
  }
}
