import 'package:flutter/material.dart';
import 'package:examplecopy/utils.dart';

class InheritedWidgett extends StatefulWidget {
  @override
  _InheritedWidgettState createState() => _InheritedWidgettState();
}

class _InheritedWidgettState extends State<InheritedWidgett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Inherited Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            color: Colors.white,
            child: Text(
              "This widget will be added soon",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: Utils.ubuntuRegularFont),
            ),
          ),
        ),
      ),
    );
  }
}
