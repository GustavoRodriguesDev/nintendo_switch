// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_import, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';

import 'componente botões/botaoPequeno.dart';

class DirectionalButton extends StatelessWidget {
  const DirectionalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 86,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BotaoPequeno(
            size: 28,
            sizeIcom: 25,
            gradientBegin: Alignment.bottomCenter,
            gradientEnd: Alignment.topCenter,
            angule: 270,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BotaoPequeno(
                  size: 28,
                  sizeIcom: 25,
                  gradientBegin: Alignment.bottomCenter,
                  gradientEnd: Alignment.topCenter,
                  angule: 180),
              BotaoPequeno(
                  size: 28,
                  sizeIcom: 25,
                  gradientBegin: Alignment.bottomCenter,
                  gradientEnd: Alignment.topCenter,
                  angule: 0),
            ],
          ),
          BotaoPequeno(
            size: 28,
            sizeIcom: 25,
            gradientBegin: Alignment.bottomCenter,
            gradientEnd: Alignment.topCenter,
            angule: 90,
          ),
        ],
      ),
    );
  }
}
