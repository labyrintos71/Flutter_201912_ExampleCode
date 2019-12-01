import 'package:flutter/material.dart';

import 'Button/buttonexam.dart';
import 'Textview/textdecoration.dart';

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
            RaisedButton(
              child: Text('TextExam', style: TextStyle(fontSize: 21)),
              color: Colors.blue,
              onPressed: () {
                // push에 전달되는 두 번째 매개변수는 Route<T> 클래스.
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return TextSample();
                }));
              },
            ),
            RaisedButton(
              child: Text('ButtonExam', style: TextStyle(fontSize: 21)),
              color: Colors.blue,
              onPressed: () {
                // 화살표 문법 적용
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ButtonSample()));

                // 위와 같은 코드. of 메소드 호출이 불편하다.
                // Navigator.of(context).push(
                // MaterialPageRoute<void>(builder: (BuildContext context) => Second())
                // );
              },
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
