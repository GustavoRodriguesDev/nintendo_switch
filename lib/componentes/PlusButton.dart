// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'componente botões/mais_menos.dart';

class PLusButton extends StatelessWidget {
  const PLusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      child: Stack(
        children: [
          Center(
            child: Retangulo(altura: 7, largura: 25),
          ),
          Center(
            child: Retangulo(altura: 25, largura: 7),
          ),
        ],
      ),
    );
  }
}
