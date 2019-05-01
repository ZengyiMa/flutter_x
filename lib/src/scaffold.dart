import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'mixin/platform_mixin.dart';

class XScaffold extends StatelessWidget with PlatformMixin {
  const XScaffold({Key key, this.navigationBar, this.content})
      : super(key: key);

  final XNavigationBar navigationBar;
  final Widget content;

  @override
  Widget materialStyleWidget(BuildContext context) {
    return Scaffold(
      appBar: navigationBar.build(context),
      body: content,
    );
  }

  @override
  Widget cupertinoStyleWidget(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: navigationBar.build(context),
      child: content,
    );
  }
}
