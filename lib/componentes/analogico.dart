// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Analogico extends StatelessWidget {
  const Analogico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: Color(0xFF5A6465),
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF050F11),
            Color(0xFF686D70),
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: FractionalOffset.topRight,
                  colors: [
                    Color(0xFF686D70),
                    Color(0xFF050F11),
                  ],
                  stops: [0.0, 0.993],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Color(0xFF676A6F),
                    borderRadius: BorderRadius.circular(100),
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
            )
          ],
        ),
      ),
    );
  }
}
