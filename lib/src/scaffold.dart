import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_x/src/base/x_stateless_widget.dart';
import 'navigationbar.dart';
import 'mixin/platform_mixin.dart';

class XScaffoldCupertinoData {}

class XScaffoldMaterialData {}

class XScaffold extends XStatelessWidget with PlatformMixin {
       
  XScaffold({
    Key key,
    this.navigationBar,
    this.content,
    XScaffoldCupertinoData cupertinoData,
    XScaffoldMaterialData materialData,
  }) : super(key, material: materialData, cupertino: cupertinoData);

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