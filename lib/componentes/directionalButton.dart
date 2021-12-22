// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_import, sized_box_for_whitespace, must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/componente%20bot%C3%B5es/icon_action.dart';

import 'componente botões/botaoPequeno.dart';

class DirectionalButton extends StatelessWidget {
  double size;
  DirectionalButton({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BotaoPequeno(
              align: Position.up,
              size: constraints.maxWidth * 0.32,
              typeAction: IconsActions(
                angle: 270,
                sizeIcons: constraints.maxWidth * 0.19,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotaoPequeno(
                  align: Position.right,
                  size: constraints.maxWidth * 0.32,
                  typeAction: IconsActions(
                    angle: 180,
                    sizeIcons: constraints.maxWidth * 0.19,
                  ),
                ),
                BotaoPequeno(
                  align: Position.left,
                  size: constraints.maxWidth * 0.32,
                  typeAction: IconsActions(
                    angle: 0,
                    sizeIcons: constraints.maxWidth * 0.19,
                  ),
                ),
              ],
            ),
            BotaoPequeno(
              align: Position.down,
              size: constraints.maxWidth * 0.32,
              typeAction: IconsActions(
                angle: 90,
                sizeIcons: constraints.maxWidth * 0.19,
              ),
            ),
          ],
        );
      }),
    );
  }
}
