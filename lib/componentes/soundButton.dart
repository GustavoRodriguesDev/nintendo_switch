// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF7B8287),
            Color(0xFF324144),
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF4A494E),
                    Color(0xFF525157),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 31,
                height: 31,
                decoration: BoxDecoration(
                    color: Color(0xFF182022),
                    borderRadius: BorderRadius.circular(50)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
