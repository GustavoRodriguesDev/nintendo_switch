// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nintendo_switch/componentes/componente%20bot%C3%B5es/botao_pequeno.dart';

class IconsActions extends StatelessWidget {
  final double sizeIcons;
  final Position position;
  const IconsActions({
    Key? key,
    required this.sizeIcons,
    this.position = Position.up,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: position.index,
      child: Icon(
        Icons.play_arrow,
        size: sizeIcons,
      ),
    );
  }
}
