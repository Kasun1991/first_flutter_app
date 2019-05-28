import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  String _lastPressed = 'never';

  void _onPress() {
    setState(() {
      DateTime current = new DateTime.now();
      _lastPressed = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: Key('test_app_bar'),
        title: Text('Floating Action Button Name'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onPress();
        },
        child: Icon(Icons.timer,color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.,
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('last presses $_lastPressed')
            ],
          ),
        ),
      ),
    );
  }
}
