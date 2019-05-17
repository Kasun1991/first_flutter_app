import 'package:flutter/material.dart';
import 'hellosublayout.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Basic Layouts'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new LayoutHello(),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new LayoutHello(),
                  new LayoutHello(),
                  new LayoutHello()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
