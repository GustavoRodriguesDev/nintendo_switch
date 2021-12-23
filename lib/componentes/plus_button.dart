// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

import 'componente botões/mais_menos.dart';

class PLusButton extends StatelessWidget {
  double size;
  PLusButton({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Retangulo(altura: size * 0.31, largura: size * 1),
          Retangulo(altura: size * 1, largura: size * 0.31),
        ],
      ),
    );
  }
}
