// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:flutter/widgets.dart';

import 'componente botões/mais_menos.dart';

class BtnMenos extends StatelessWidget {
  double size;
  BtnMenos({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Retangulo(
              altura: constraints.maxHeight * 0.31,
              largura: constraints.maxWidth * 1),
        );
      }),
    );
  }
}
