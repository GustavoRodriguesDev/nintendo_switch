// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key, required this.size}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF732A23),
          width: size * 0.03,
        ),
        shape: BoxShape.circle,
        color: Color(0xFF8F8989),
      ),
      child: Container(
        height: size * 0.75,
        width: size * 0.75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF33383C),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Icon(
            Icons.home,
            size: constraints.maxWidth * 0.59,
          );
        }),
      ),
    );
  }
}
