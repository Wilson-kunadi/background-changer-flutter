import 'dart:math';

import 'package:flutter/material.dart';

class bgChanger extends StatefulWidget {
  @override
  _bgChangerState createState() => _bgChangerState();
}

String hexColor(String colorHexCode) =>
    "0xff${colorHexCode.replaceAll("#", "")}";

class _bgChangerState extends State<bgChanger> {
  List<Color> color = [
    Color(int.parse(hexColor("#B95F89"))),
    Color(int.parse(hexColor("#d9d3b5"))),
    Color(int.parse(hexColor("#9f2f2f"))),
    Color(int.parse(hexColor("#bb9019"))),
    Color(int.parse(hexColor("#616e39"))),
  ];

  Color bgcolor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.bgcolor = color[0];
  }

  void bgChanger() {
    int rd = Random().nextInt(5);
    setState(() {
      this.bgcolor = color[rd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Random Background Changer"),
        ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: Container(
              child: RaisedButton(
                color: Colors.black,
                onPressed: bgChanger,
                child: Text(
                  "Change Background",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
