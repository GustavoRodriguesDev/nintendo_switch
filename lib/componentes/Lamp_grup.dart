// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

import 'componente botões/lamp.dart';

class LampGroup extends StatelessWidget {
  const LampGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lamp(),
          Lamp(),
          Lamp(),
          Lamp(),
        ],
      ),
    );
  }
}
