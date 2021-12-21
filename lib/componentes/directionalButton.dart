// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_import, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';

import 'componente botões/botaoPequeno.dart';

class DirectionalButton extends StatelessWidget {
  double size;
  DirectionalButton({required this.size});

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
              type: Type.icon,
              size: constraints.maxWidth * 0.32,
              sizeIcom: 25,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              angule: 270,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BotaoPequeno(
                    type: Type.icon,
                    size: constraints.maxWidth * 0.32,
                    sizeIcom: 25,
                    gradientBegin: Alignment.bottomCenter,
                    gradientEnd: Alignment.topCenter,
                    angule: 180),
                BotaoPequeno(
                    type: Type.icon,
                    size: constraints.maxWidth * 0.32,
                    sizeIcom: 25,
                    gradientBegin: Alignment.centerRight,
                    gradientEnd: Alignment.centerLeft,
                    angule: 0),
              ],
            ),
            BotaoPequeno(
              type: Type.icon,
              size: constraints.maxWidth * 0.32,
              sizeIcom: 25,
              gradientBegin: Alignment.centerRight,
              gradientEnd: Alignment.centerLeft,
              angule: 90,
            ),
          ],
        );
      }),
    );
  }
}
