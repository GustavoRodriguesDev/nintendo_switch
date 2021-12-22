// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable

import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  double size;
  SoundButton({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.1),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF324144),
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.85,
          height: constraints.maxWidth * 0.85,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(constraints.maxHeight * 0.078),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF4A494E),
                Color(0xFF525157),
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.72,
              height: constraints.maxWidth * 0.72,
              decoration: BoxDecoration(
                color: Color(0xFF182022),
                shape: BoxShape.circle,
              ),
            );
          }),
        );
      }),
    );
  }
}
