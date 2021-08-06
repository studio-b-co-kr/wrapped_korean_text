import 'package:flutter/material.dart';
import 'package:wrapped_korean_text/wrapped_korean_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Wrapped Korean Text Demo'),
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
  String _text =
      ''' 공간을 통해 삶의 가치를 높이는 것, 사람과 공간, 그리고 디자인을 향한 뜨거운 열정으로 고객을 위한 끊임없는 혁신과 창조의 미학을 창출하겠습니다.

한발 먼전 나아가고, 남보다 앞장서서 미래로의 길을 찾아 여러분을 꿈꾸게 하는 영원한 파트너로서 꿈을 실현하는 라이프 크리에이터가 될 것 입니다.

그 길을 저희 리더스디자인와 함께 실내공간 설계 시 양질의 디자인과 착공에서 완공까지 완벽한 시공을 수행하기 위해 구성된 전문조직과 함께 하시길 바랍니다.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 18),
          Text('Flutter\'s Text widget:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
              color: Colors.red[50],
              padding: EdgeInsets.all(8),
              child: Text(
                _text,
              )),
          SizedBox(height: 18),
          Text('Wrapped Korean Text widget:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
              color: Colors.blue[50],
              padding: EdgeInsets.all(8),
              child: WrappedKoreanText(_text))
        ],
      ),
    );
  }
}
