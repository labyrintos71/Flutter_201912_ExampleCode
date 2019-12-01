import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('두 번째')),
      body: Center(
          child: Column(
        // ( start, center, end ) gravity와 같음
        //crossAxisAlignment (상하좌우 양축 정렬)
        //CrossAxisAlignment.baseline : 폰트크기가 다르거나 할때 기본 라인 축에 맞춰 정렬할때 유용
        //CrossAxisAlignment.start : 시작지점으로 맞춤, 이후 좌우(Column인 경우) 또는 상하(Row인 경우) 간격을 맞춤
        //CrossAxisAlignment.stretch : 늘림(최대화)
        //CrossAxisAlignment.center : 중앙정렬
        //mainAxisSize 메인 축의 크기(컨테이너 영역)
        //MainAxisSize.min : 최소화
        //MainAxisSize.max : 최대화
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello world',
            style: TextStyle(
              fontSize: 40,
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
          RaisedButton(
            child: Text('처음 화면으로 돌아가기', style: TextStyle(fontSize: 21)),
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);

              // 위와 같은 코드
              // Navigator.of(context).pop();
            },
          ),
        ],
      )),
    );
  }
}
