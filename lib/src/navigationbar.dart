import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:flutter/cupertino.dart' as Cupertino;
import 'dart:io';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
     if (Platform.isAndroid) {
      return Material.AppBar(
        title: Material.Text(this.title)
      );
    } else if (Platform.isIOS) {
      return Cupertino.CupertinoNavigationBar(
          middle: Text(this.title),
        );
    } else {
      return null;
    }
   
  }
}
