import 'package:examplecode/const/color_const.dart';
import 'package:flutter/material.dart';

class ThemePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       theme: ThemeData(
        primaryColor: BLUE_DEEP,
        accentColor: RED,
      ),
    );
  }
}