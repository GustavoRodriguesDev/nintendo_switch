// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LatterAction extends StatelessWidget {
  final String letter;
  final double size;
  const LatterAction({
    required this.letter,
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: EdgeInsets.only(right: size * 0.19),
      child: Text(
        letter,
        textAlign: TextAlign.end,
        style: TextStyle(
          color: Colors.white,
          fontSize: size * 0.80,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
