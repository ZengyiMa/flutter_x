import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'platform.dart';

class FXScaffold extends StatelessWidget {
  const FXScaffold({Key key, this.navigationBar, this.content}) : super(key: key);

  final FXNavigationBar navigationBar;
  final Widget content;

  @override
  Widget build(BuildContext context) {
     if (FXPlatform.style() == FXAppStyle.material) {
      return Scaffold(
          appBar: navigationBar.build(context),
          body: content,
          );
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoPageScaffold(
        navigationBar: navigationBar.build(context),
        child: content,
      );
    } else {
      return null;
    }
  }
}
