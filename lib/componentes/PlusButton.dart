// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'componente botões/mais_menos.dart';

class PLusButton extends StatelessWidget {
  double size;
  PLusButton({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Center(
              child: Retangulo(
                  altura: constraints.maxHeight * 0.31,
                  largura: constraints.maxWidth * 1),
            ),
            Center(
              child: Retangulo(
                  altura: constraints.maxHeight * 1,
                  largura: constraints.maxWidth * 0.31),
            ),
          ],
        );
      }),
    );
  }
}
