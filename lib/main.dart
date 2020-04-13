import 'package:background_changer/bgChanger.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Random Background Changer",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: bgChanger(),
    );
  }
}
