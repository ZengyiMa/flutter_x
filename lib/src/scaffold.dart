import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'dart:io';

class FXScaffold extends StatelessWidget {
  const FXScaffold({Key key, this.navigationBar}) : super(key: key);

  final FXNavigationBar navigationBar;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Scaffold(
          appBar: navigationBar.build(context)
          );
    } else if (Platform.isIOS) {
      return CupertinoPageScaffold(
        navigationBar: navigationBar.build(context),
        child: Container(),
      );
    } else {
      return null;
    }
  }
}
