import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:flutter/cupertino.dart' as Cupertino;
import 'navigationbar.dart';
import 'dart:io';

class Scaffold extends StatelessWidget {
  const Scaffold({Key key, this.navigationBar}) : super(key: key);

  final NavigationBar navigationBar;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Material.Scaffold(
          appBar: navigationBar.build(context)
          );
    } else if (Platform.isIOS) {
      return Cupertino.CupertinoPageScaffold(
        navigationBar: navigationBar.build(context),
        child: Container(),
      );
    } else {
      return null;
    }
  }
}
