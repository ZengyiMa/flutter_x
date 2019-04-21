import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'platform.dart';

class FXNavigationBar extends StatelessWidget {
  const FXNavigationBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
     if (FXPlatform.style() == FXAppStyle.material) {
      return AppBar(
        title: Text(this.title)
      );
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoNavigationBar(
          middle: Text(this.title),
        );
    } else {
      return null;
    }
   
  }
}
