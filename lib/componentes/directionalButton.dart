// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/direcinais/DirecionalRight.dart';
import 'package:nintendo_switch/componentes/direcinais/direcinalDown.dart';
import 'package:nintendo_switch/componentes/direcinais/direcionalLeft.dart';
import 'package:nintendo_switch/componentes/direcinais/direcionalUp.dart';

class DirectionalButton extends StatelessWidget {
  const DirectionalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DirecinalUp(),
          DirecionalLeft(),
          DirecionalDown(),
          DirecionalRight(),
        ],
      ),
    );
  }
}
