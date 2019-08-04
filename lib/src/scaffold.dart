import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'mixin/platform_mixin.dart';
import 'mixin/cupertino_data_mixin.dart';
import 'mixin/material_data_mixin.dart';

class XScaffoldCupertinoData {}

class XScaffoldMaterialData {}

class XScaffold extends StatelessWidget
    with
        PlatformMixin,
        CupertinoDataMixin<XScaffoldCupertinoData>,
        MaterialDataMixin<XScaffoldMaterialData> {
  XScaffold({
    Key key,
    this.navigationBar,
    this.content,
    XScaffoldCupertinoData cupertinoData,
    XScaffoldMaterialData materialData,
  }) : super(key: key) {
    this.cupertinoWidgetData = cupertinoData;
    this.materialWidgetData = materialData;
  }

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