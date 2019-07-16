import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'mixin/platform_mixin.dart';
import 'platform_data_provider.dart';

class XScaffoldCupertinoData {}

class XScaffoldMaterialData {}

class XScaffold extends StatelessWidget
    with
        PlatformMixin<XScaffoldCupertinoData,
            XScaffoldMaterialData> {
  XScaffold(
      {Key key,
      this.navigationBar,
      this.content,
      PlatformDataProvider<XScaffoldCupertinoData,
              XScaffoldMaterialData>
          dataProvider})
      : super(key: key) {
    inititalPlatformDataProvider(dataProvider);
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
