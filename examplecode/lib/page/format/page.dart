import "package:flutter/material.dart";

class StateFulScreen extends StatefulWidget {
  @override
  _StateFulPage createState() => _StateFulPage();
}

class _StateFulPage extends State<StateFulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("empty"),
      ),
      body: Text("This is an empty page"),
    );
  }
}

class StatelessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("empty"),
      ),
      body: Text("This is an empty page"),
    );
  }
}