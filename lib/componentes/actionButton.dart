// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'componente botões/botaoPequeno.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 86,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BotaoPequeno(
            type: Type.letter,
            size: 28,
            gradientBegin: Alignment.bottomCenter,
            gradientEnd: Alignment.topCenter,
            letterButton: 'X',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BotaoPequeno(
                type: Type.letter,
                gradientBegin: Alignment.bottomCenter,
                gradientEnd: Alignment.topCenter,
                size: 28,
                letterButton: 'Y',
              ),
              BotaoPequeno(
                type: Type.letter,
                size: 28,
                gradientBegin: Alignment.bottomCenter,
                gradientEnd: Alignment.topCenter,
                letterButton: 'A',
              ),
            ],
          ),
          BotaoPequeno(
            type: Type.letter,
            size: 28,
            gradientBegin: Alignment.bottomCenter,
            gradientEnd: Alignment.topCenter,
            letterButton: 'B',
          ),
        ],
      ),
    );
  }
}
