import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';

class SecondPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: Container(
          child: Text('second page counter ${counter.getCounter()}'),
        ),
      ),
    );
  }
}