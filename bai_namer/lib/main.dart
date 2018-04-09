import 'package:flutter/material.dart';
import 'package:namer/check/check.dart';
import 'package:namer/my/my.dart';
import 'package:namer/suggest/suggest.dart';

void main() {
  runApp(new NamerApp());
}

class NamerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '名大大',
      routes: {
        "/home": (context) => HomePage(),
        "/check": (context) => CheckHomePage(),
        "/suggest": (context) => SuggestHomePage(),
        "/my": (context) {
//          Navigator.of(context)
          return new MyHomePage(
//            id: "Image",
          );
        }
      },
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(title: '名大大'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  int _index = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: _index != 0,
            child: new TickerMode(
              enabled: _index == 0,
              child: new MaterialApp(home: new SuggestHomePage()),
            ),
          ),
          new Offstage(
            offstage: _index != 1,
            child: new TickerMode(
              enabled: _index == 1,
              child: new MaterialApp(home: new MyHomePage()),
            ),
          ),
          new Offstage(
            offstage: _index != 2,
            child: new TickerMode(
              enabled: _index == 2,
              child: new MaterialApp(home: new CheckHomePage()),
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _index,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.ac_unit),
            title: new Text('起名3'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle),
            title: new Text('我的2'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.airline_seat_individual_suite),
            title: new Text('核名1'),
          ),
        ],
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
    );
  }
}
