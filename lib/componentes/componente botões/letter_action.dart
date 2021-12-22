import 'package:flutter/material.dart';

class LatterAction extends StatelessWidget {
  final String letter;
  final double sizeLetter;
  const LatterAction({
    required this.letter,
    Key? key,
    required this.sizeLetter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          letter,
          textAlign: TextAlign.end,
          style: TextStyle(
              color: Colors.white,
              fontSize: sizeLetter,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
