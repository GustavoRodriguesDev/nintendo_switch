// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double size;
  BigButton({
    Key? key,
    required this.size,
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
        border: Border.all(color: Colors.black, width: size * 0.017),
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
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.81,
          height: constraints.maxHeight * 0.81,
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
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.91,
              height: constraints.maxHeight * 0.91,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: constraints.maxWidth * 0.02),
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
            );
          }),
        );
      }),
    );
  }
}
