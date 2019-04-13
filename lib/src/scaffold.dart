import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:flutter/cupertino.dart' as Cupertino;
import 'dart:io';

class Scaffold extends StatelessWidget {
  const Scaffold({Key key, this.title, this.widget}) : super(key: key);

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Material.Scaffold(
          appBar: Material.AppBar(title: Material.Text(this.title)));
    } else if (Platform.isIOS) {
      return Cupertino.CupertinoPageScaffold(
        navigationBar: Cupertino.CupertinoNavigationBar(
          middle: Text(this.title),
        ),
        child: Container(),
      );
    } else {
      return null;
    }
  }
}
