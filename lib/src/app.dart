import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:flutter/cupertino.dart' as Cupertino;
import 'dart:io';

class App extends StatelessWidget {
  const App({Key key, this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Material.MaterialApp(
        home: widget,
        theme: Material.ThemeData(
          primarySwatch: Material.Colors.blue,
        ),
      );
    } else if (Platform.isIOS) {
      return Cupertino.CupertinoApp(
        home: widget,
        theme: Cupertino.CupertinoThemeData(
          primaryColor: Material.Colors.blue,
        ),
      );
    } else {
      return null;
    }
  }
}
