import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'platform.dart';

class FXNavigationBar extends StatelessWidget {
  const FXNavigationBar({Key key, this.title, this.leading, this.actions}) : super(key: key);

  final String title;
  final List<Widget> actions;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
     if (FXPlatform.style() == FXAppStyle.material) {
      return AppBar(
        title: Text(this.title),
        actions: this.actions,
        leading: leading,
      );
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoNavigationBar(
          middle: Text(this.title),
          trailing: this.actions != null ? Row(
            mainAxisSize: MainAxisSize.min,
            children: this.actions,
          ) : null,
          leading: this.leading,
        );
    } else {
      return null;
    }
   
  }
}
