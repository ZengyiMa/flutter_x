import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'dart:io';

class FXScaffold extends StatelessWidget {
  const FXScaffold({Key key, this.navigationBar, this.content}) : super(key: key);

  final FXNavigationBar navigationBar;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Scaffold(
          appBar: navigationBar.build(context),
          body: content,
          );
    } else if (Platform.isIOS) {
      return CupertinoPageScaffold(
        navigationBar: navigationBar.build(context),
        child: content,
      );
    } else {
      return null;
    }
  }
}
