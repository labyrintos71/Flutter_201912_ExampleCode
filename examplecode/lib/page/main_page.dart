import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Example"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("AlertDialog"),
            onTap: () => Navigator.pushNamed(context, "/alertdialog"),
          ),
          ListTile(
            title: Text("Anim"),
            onTap: () => Navigator.pushNamed(context, "/anim"),
          ),
          ListTile(
            title: Text("Appbar"),
            onTap: () => Navigator.pushNamed(context, "/appbar"),
          ),
          ListTile(
            title: Text("Assets"),
            onTap: () => Navigator.pushNamed(context, "/assets"),
          ),
        ],
      ),
    );
  }
}
