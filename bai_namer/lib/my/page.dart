part of my;

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('我的？'),
        ),
        body: new ListView(
          padding: kMaterialListPadding,
          children: <Widget>[
            new ListTile(
                title: new Text('我的收藏工'),
                trailing: new PopupMenuButton<String>(
                    padding: EdgeInsets.zero,
                    onSelected: (v) {},
                    itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                          new PopupMenuItem<String>(value: '', child: const Text('Context menu item one1')),
                          const PopupMenuItem<String>(enabled: false, child: const Text('A disabled menu item')),
                          new PopupMenuItem<String>(value: '', child: const Text('Context menu item three2')),
                        ])),
            new ListTile(
              title: new Text('我的起名记录1'),
            ),
            new ListTile(
              title: new Text('我的核名记录2'),
            ),
          ],
        ));
  }
}
