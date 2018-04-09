part of check;

class CheckHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('名大大'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              decoration:
                  new BoxDecoration(color: Theme.of(context).primaryColor),
              padding: new EdgeInsets.all(20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    '在线核名系统',
                    style: new TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  new Text('我的收藏',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )),
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        '地区',
                        textAlign: TextAlign.right,
                      ),
                      new TextField(
                        controller: new TextEditingController(text: '上海1'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

 class CheckNameState extends StatefulWidget {
  CheckNameState(Key key): super(key: key);
  @override
   _CheckNameState createState () => new _CheckNameState();
 }
 class _CheckNameState extends State<CheckNameState> {
    Widget build(BuildContext context) {

    }
 }