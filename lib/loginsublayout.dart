import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
    @required this.onSubmit,
  }) : super(key: key);

  final VoidCallback onSubmit;
  static final TextEditingController _user = TextEditingController();
  static final TextEditingController _pass = TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        TextField(controller: _user,decoration: InputDecoration(hintText: 'Enter a user name'),),
        TextField(controller: _pass,decoration: InputDecoration(hintText: 'Enter a password'),obscureText: true,),
        RaisedButton(child: Text('Submit'),onPressed: onSubmit)

      ],
    );
  }
}
