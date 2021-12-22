// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Retangulo extends StatelessWidget {
  final double altura;
  final double largura;
  const Retangulo({required this.altura, required this.largura, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF4A494E),
            Color(0xFF525157),
          ],
          stops: [0.0, 1.0],
        ),
      ),
    );
  }
}
