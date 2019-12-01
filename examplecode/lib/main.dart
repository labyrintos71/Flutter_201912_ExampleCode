import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Hello world',
              style: TextStyle(fontSize: 40,
                decoration: TextDecoration.underline,
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Hello ',
                style: TextStyle(fontSize: 40),
                children: <TextSpan>[
                  TextSpan(
                      text: 'world',
                      style: TextStyle(
                        fontSize: 40,
                        decoration: TextDecoration.underline,
                      )),
                  // can add more TextSpans here...
                ],
              ),
            ),
            Text(
              'Hello world',
              style: TextStyle(
                fontSize: 40,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                //TextDecorationStyle.dotted: 점선
                //TextDecorationStyle.double: 밑줄
                //TextDecorationStyle.wavy:   물결
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
