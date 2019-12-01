import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>( // Counter 타입 사용. Counter 클래스의 데이터가 변하는지 보고 있다가 변하면 알려줍니다.
      builder: (_) => Counter(0), // 초기값 정하기
      child: MaterialApp(
        title: 'Flutter Value',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context); // Counter 타입의 데이터를 가져옴. 

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${counter.getCounter()}',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: openFirstPage,
              child: Text('first page'),
            ),
            RaisedButton(
              onPressed: openSecondPage,
              child: Text('second page'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: counter.increment, // 버튼을 누를 때마다, 값이 증가합니다. notifyListeners()가 호출되기에 UI가 갱신됩니다.
            tooltip: 'Increment',
            child: Icon(Icons.add),
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: counter.decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            heroTag: null,
          )
        ],
      ),
    );
  }

  // 다른 페이지로 이동을 합니다. 이동한 페이지에서도 Counter의 값은 동일합니다.
  Future openFirstPage() {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FirstPage()),
    );
  }

  Future openSecondPage() {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }
}
