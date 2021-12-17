// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double size;
  const BigButton({
    Key? key,
    this.size = 58,
  }) : super(key: key);

//1 - tipo
//2 - nome
//3 - parametros
//4 - escopo da função
//5 - retorno ou não
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: Color(0xFF5A6465),
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF050F11),
            Color(0xFF686D70),
          ],
        ),
      ),
      child: Container(
        width: 250,
        height: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF686D70),
              Color(0xFF050F11),
            ],
          ),
        ),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            color: Color(0xFF676A6F),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF242625),
                Color(0xFF676A6F),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
