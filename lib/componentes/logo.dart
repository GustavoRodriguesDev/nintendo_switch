// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double size;

  Logo({this.size = 129, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight * 0.35,
              width: constraints.maxHeight * 0.18,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.white),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
          Container(
            width: 12.5,
          ),
          LayoutBuilder(builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight * 0.35,
              width: constraints.maxHeight * 0.18,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
