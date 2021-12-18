// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/bot%C3%B5es%20componentes/a%C3%A7%C3%A3o/botaoPequeno.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 10,
            left: 10,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 35,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              letterButton: 'B',
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            left: 10,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 35,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              letterButton: 'X',
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            top: 10,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 35,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              letterButton: 'A',
            ),
          ),
          Positioned(
            bottom: 10,
            top: 10,
            left: 0,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 35,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              letterButton: 'B',
            ),
          ),
        ],
      ),
    );
  }
}
