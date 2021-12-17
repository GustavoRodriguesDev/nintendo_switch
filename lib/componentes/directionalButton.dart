// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DirectionalButton extends StatelessWidget {
  const DirectionalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DirecinalUp(),
        ],
      ),
    );
  }
}

class DirecinalUp extends StatelessWidget {
  const DirecinalUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF050F11),
          ],
        ),
      ),
      child: Container(
        width: 35,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF686D70),
              Color(0xFF050F11),
            ],
          ),
        ),
        child: Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}

class DirecionalLeft extends StatelessWidget {
  const DirecionalLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DirecionalDown extends StatelessWidget {
  const DirecionalDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DirecionalRight extends StatelessWidget {
  const DirecionalRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
