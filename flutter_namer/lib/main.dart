// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_namer/main.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(23.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerlang',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
    Column bulidButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        bulidButtonColumn(Icons.call, 'CALL'),
        bulidButtonColumn(Icons.near_me, 'ROUTE'),
        bulidButtonColumn(Icons.share, 'SHARE'),
      ],
    ));
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
          Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps.
           Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes.
            A gondola ride from Kandersteg, followed by a half-hour walk through pastures
             and pine forest, leads you to the lake, which warms to 20 degrees Celsius
              in the summer. Activities enjoyed here include rowing, and riding the summer
               toboggan run.
        ''',
        softWrap: true,
      ),
    );
    Widget textArea = new Text('hello flutter',
        style: new TextStyle(fontSize: 32.0), textAlign: TextAlign.center);
    Widget center = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Image.asset('static/image/1.jpg', width: 100.0, height: 100.0),
        new Image.asset('static/image/2.jpg', width: 100.0, height: 100.0,fit: BoxFit.fill,),
        new Image.asset('static/image/3.jpeg', width: 100.0, height: 100.0)
      ],
    );
    return new MaterialApp(
      title: 'Flutter demo',
      home: new Scaffold(
          appBar: new AppBar(title: new Text('Top lakes')),
          body: new ListView(
            children: <Widget>[
              new Image.asset(
                'static/image/1.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
              textArea,
              center
            ],
          )),
    );
  }
}
