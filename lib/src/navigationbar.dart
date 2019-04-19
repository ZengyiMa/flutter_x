import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class FXNavigationBar extends StatelessWidget {
  const FXNavigationBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
     if (Platform.isAndroid) {
      return AppBar(
        title: Text(this.title)
      );
    } else if (Platform.isIOS) {
      return CupertinoNavigationBar(
          middle: Text(this.title),
        );
    } else {
      return null;
    }
   
  }
}
