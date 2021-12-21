// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'componente botões/botaoPequeno.dart';

class ActionButton extends StatelessWidget {
  double size;
  ActionButton({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BotaoPequeno(
              type: Type.letter,
              size: constraints.maxWidth * 0.32,
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
                  size: constraints.maxWidth * 0.32,
                  letterButton: 'Y',
                ),
                BotaoPequeno(
                  type: Type.letter,
                  size: constraints.maxWidth * 0.32,
                  gradientBegin: Alignment.centerRight,
                  gradientEnd: Alignment.centerLeft,
                  letterButton: 'A',
                ),
              ],
            ),
            BotaoPequeno(
              type: Type.letter,
              size: constraints.maxWidth * 0.32,
              gradientBegin: Alignment.centerRight,
              gradientEnd: Alignment.centerLeft,
              letterButton: 'B',
            ),
          ],
        );
      }),
    );
  }
}
