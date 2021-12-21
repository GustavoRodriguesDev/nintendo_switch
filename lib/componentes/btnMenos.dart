// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/widgets.dart';

import 'componente botões/mais_menos.dart';

class BtnMenos extends StatelessWidget {
  const BtnMenos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      child: Stack(
        children: [
          Center(
            child: Retangulo(altura: 6, largura: 19),
          ),
        ],
      ),
    );
  }
}
