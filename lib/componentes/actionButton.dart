// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/componente%20bot%C3%B5es/letter_action.dart';

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
              align: Position.up,
              size: constraints.maxWidth * 0.32,
              typeAction: LatterAction(
                letter: 'X',
                size: constraints.maxWidth * 0.17,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotaoPequeno(
                  align: Position.right,
                  size: constraints.maxWidth * 0.32,
                  typeAction: LatterAction(
                    letter: 'A',
                    size: constraints.maxWidth * 0.17,
                  ),
                ),
                BotaoPequeno(
                  align: Position.left,
                  size: constraints.maxWidth * 0.32,
                  typeAction: LatterAction(
                    letter: 'Y',
                    size: constraints.maxWidth * 0.17,
                  ),
                ),
              ],
            ),
            BotaoPequeno(
              align: Position.down,
              size: constraints.maxWidth * 0.32,
              typeAction: LatterAction(
                letter: 'R',
                size: constraints.maxWidth * 0.17,
              ),
            ),
          ],
        );
      }),
    );
  }
}
