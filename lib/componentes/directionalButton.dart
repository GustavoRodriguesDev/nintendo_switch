// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names, unused_import

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/direcinais/DirecionalRight.dart';
import 'package:nintendo_switch/componentes/direcinais/direcinalDonw.dart';
import 'package:nintendo_switch/componentes/direcinais/direcionalLeft.dart';
import 'package:nintendo_switch/componentes/direcinais/direcionalUp.dart';

class DirectionalButton extends StatelessWidget {
  const DirectionalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DirecinalUp(containerUm: 50, containerDOis: 40, sizeIcom: 25),
          DirecionalLeft(containerUm: 50, containerDOis: 40, sizeIcom: 25),
          DirecionalDonw(containerUm: 50, containerDOis: 40, sizeIcom: 25),
          DirecionalRight(containerUm: 50, containerDOis: 40, sizeIcom: 25),
        ],
      ),
    );
  }
}
