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
                    style: new TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  )
                ),
                new Text(
                  'Kandersteg, Switzerlang',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  )
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500]
          )
        ],
      ),
    );
    return new MaterialApp(
      title: 'Flutter demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}