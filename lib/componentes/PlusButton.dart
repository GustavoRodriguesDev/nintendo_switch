// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/Btn%20direcionais/a%C3%A7%C3%A3o/mais_menos.dart';

class PLusButton extends StatelessWidget {
  const PLusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.minPositive,
      width: double.minPositive,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            bottom: 10,
            right: 10,
            left: 10,
            child: Center(
              child: Retangulo(altura: 7, largura: 25),
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            right: 10,
            left: 10,
            child: Center(child: Retangulo(altura: 25, largura: 7)),
          ),
        ],
      ),
    );
  }
}
