// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:nintendo_switch/componentes/Btn%20direcionais/a%C3%A7%C3%A3o/mais_menos.dart';

class BtnMenos extends StatelessWidget {
  const BtnMenos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Positioned(
        top: 10,
        bottom: 10,
        right: 10,
        left: 10,
        child: Center(
          child: Retangulo(altura: 40, largura: 130),
        ),
      ),
    );
  }
}
