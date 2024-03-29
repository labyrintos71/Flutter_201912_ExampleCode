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
          ListTile(
            title: Text("Async_Future"),
            onTap: () => Navigator.pushNamed(context, "/async_future"),
          ),
          ListTile(
            title: Text("Async_Stream"),
            onTap: () => Navigator.pushNamed(context, "/async_stream"),
          ),
          ListTile(
            title: Text("Card"),
            onTap: () => Navigator.pushNamed(context, "/card"),
          ),
          ListTile(
            title: Text("Checkbox"),
            onTap: () => Navigator.pushNamed(context, "/checkbox"),
          ),
          ListTile(
            title: Text("Chip"),
            onTap: () => Navigator.pushNamed(context, "/chip"),
          ),
          ListTile(
            title: Text("Container"),
            onTap: () => Navigator.pushNamed(context, "/container"),
          ),
          
        ],
      ),
    );
  }
}
