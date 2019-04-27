import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'platform.dart';

class FXNavigationBar extends StatelessWidget {
  const FXNavigationBar({Key key, this.title, this.leading, this.actions, this.backgroundColor}) : super(key: key);

  final String title;
  final List<Widget> actions;
  final Widget leading;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
     if (FXPlatform.style() == FXAppStyle.material) {
      return AppBar(
        title: Text(this.title),
        actions: this.actions,
        leading: leading,
        backgroundColor: this.backgroundColor,
      );
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoNavigationBar(
          middle: Text(this.title),
          trailing: this.actions != null ? Row(
            mainAxisSize: MainAxisSize.min,
            children: this.actions,
          ) : null,
          leading: this.leading,
          backgroundColor: this.backgroundColor,
        );
    } else {
      return null;
    }
   
  }
}
