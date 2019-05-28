import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                Text('Drawer Text'),
                RaisedButton(
                    color: Colors.red,
                    child: Text('X'),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              //TODO Add UI Components
            ],
          ),
        ),
      ),
    );
  }
}
