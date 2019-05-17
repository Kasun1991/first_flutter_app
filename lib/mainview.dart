import 'package:flutter/material.dart';
import 'hellodemo.dart';
import 'appbardemo.dart';
import 'layoutdemo.dart';
import 'logindemo.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Hello Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelloDemo()),
                );
              },
            ),
            RaisedButton(
              child: Text('AppBar Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppBarDemo()),
                );
              },
            ),
            RaisedButton(
              child: Text('Layout Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutDemo()),
                );
              },
            ),
            RaisedButton(
              child: Text('Login Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginDemo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
