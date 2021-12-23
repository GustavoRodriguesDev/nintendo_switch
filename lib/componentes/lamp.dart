// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/widgets.dart';

enum Lampstate { lampOn, lampOff }

class Lamp extends StatelessWidget {
  late Decoration? decoration;
  final Lampstate lampState;
  final double size;

  Lamp({
    Key? key,
    required this.lampState,
    this.decoration,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (lampState) {
      case Lampstate.lampOn:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFB6EBA5),
        );

        break;
      case Lampstate.lampOff:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF222327),
        );
        break;
      default:
    }
    return Container(height: size, width: size, decoration: decoration);
  }
}
