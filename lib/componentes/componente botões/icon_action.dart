// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconsActions extends StatelessWidget {
  final double angle;
  final double sizeIcons;
  const IconsActions({required this.angle, Key? key, required this.sizeIcons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(angle * 3.14 / 180),
      child: Icon(
        Icons.play_arrow,
        size: sizeIcons,
      ),
    );
  }
}
