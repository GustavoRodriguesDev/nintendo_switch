import 'package:flutter/material.dart';
import 'package:nintendo_switch/nintendo.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NintendoSwitch(),
      debugShowCheckedModeBanner: false,
    );
  }
}
