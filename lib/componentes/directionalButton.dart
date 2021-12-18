// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_import, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/Btn%20direcionais/a%C3%A7%C3%A3o/botaoPequeno.dart';

class DirectionalButton extends StatelessWidget {
  const DirectionalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 10,
            left: 10,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 40,
              sizeIcom: 25,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              angule: 270,
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            right: 0,
            child: BotaoPequeno(
                containerUm: 50,
                containerDOis: 40,
                sizeIcom: 25,
                gradientBegin: Alignment.bottomCenter,
                gradientEnd: Alignment.topCenter,
                angule: 0),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            left: 0,
            child: BotaoPequeno(
                containerUm: 50,
                containerDOis: 40,
                sizeIcom: 25,
                gradientBegin: Alignment.bottomCenter,
                gradientEnd: Alignment.topCenter,
                angule: 180),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: BotaoPequeno(
              containerUm: 50,
              containerDOis: 40,
              sizeIcom: 25,
              gradientBegin: Alignment.bottomCenter,
              gradientEnd: Alignment.topCenter,
              angule: 90,
            ),
          ),
        ],
      ),
    );
  }
}
