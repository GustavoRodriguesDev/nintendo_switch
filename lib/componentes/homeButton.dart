import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF732A23),
        ),
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFF8F8989),
      ),
    );
  }
}
