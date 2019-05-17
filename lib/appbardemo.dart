import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AppBarDemoState();
  }
}

class _AppBarDemoState extends State<AppBarDemo> {
  String _title = 'App Bar Demo';
  String _myState = 'NO STATE';
  
  void _pressed(String message){
    print(message);
    setState(() {
      _myState = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add_alert),onPressed: (){_pressed('Alert Pressed');},),
          new IconButton(icon: new Icon(Icons.print),onPressed: (){_pressed('Print Pressed');},),
          new IconButton(icon: new Icon(Icons.people),onPressed: (){_pressed('People Pressed');},)
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
          child: new Text(_myState ),
        ),
      ),
    );
  }
}
