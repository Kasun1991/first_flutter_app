import 'package:flutter/material.dart';
import 'hellodemo.dart';
import 'appbardemo.dart';
import 'layoutdemo.dart';
import 'logindemo.dart';
import 'snakbardemo.dart';
import 'alertDialogDemo.dart';
import 'textfieldemo.dart';
import 'checkboxdemo.dart';
import 'radiobuttondemo.dart';
import 'switchdemo.dart';

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
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => HelloDemo()),
//                );
                Navigator.pushNamed(context, '/helloDemo');
              },
            ),
            RaisedButton(
              child: Text('AppBar Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppBarDemo()),
                );
                //Navigator.pushNamed(context, '/appBarDemo');
              },
            ),
            RaisedButton(
              child: Text('Layout Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutDemo()),
                );
                //Navigator.pushNamed(context, '/layoutDemo');
              },
            ),
            RaisedButton(
              child: Text('Login Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginDemo()),
                );
                //Navigator.pushNamed(context, '/loginDemo');
              },
            ),
            RaisedButton(
              child: Text('SnackBar Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SnackBarDemo()),
                );
                //Navigator.pushNamed(context, '/snackBarDemo');
              },
            ),
            RaisedButton(
              child: Text('Alert Dialog Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertDialogDemo()),
                );
                //Navigator.pushNamed(context, '/alertDialogDemo');
              },
            ),
            RaisedButton(
              child: Text('Text Field Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextFieldDemo()),
                );
                //Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
            RaisedButton(
              child: Text('Check Box Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckBoxDemo()),
                );
                //Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
            RaisedButton(
              child: Text('Radio Button Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RadioButtonDemo()),
                );
                //Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
            RaisedButton(
              child: Text('Switch Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwitchDemo()),
                );
                //Navigator.pushNamed(context, '/textFieldDemo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
