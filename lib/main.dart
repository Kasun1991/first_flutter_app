import 'package:flutter/material.dart';
import 'mainview.dart';
import 'hellodemo.dart';
import 'appbardemo.dart';
import 'layoutdemo.dart';
import 'logindemo.dart';
import 'snakbardemo.dart';
import 'alertDialogDemo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/' : (context) => MainView(),
      '/helloDemo' : (context) => HelloDemo(),
      '/appBarDemo' : (context) => AppBarDemo(),
      '/layoutDemo' : (context) => LayoutDemo(),
      '/loginDemo' : (context) => LoginDemo(),
      '/snackBarDemo' : (context) => SnackBarDemo(),
      '/alertDialogDemo' : (context) => AlertDialogDemo(),
    },
  ));
}

