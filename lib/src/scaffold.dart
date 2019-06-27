import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'navigationbar.dart';
import 'mixin/platform_mixin.dart';


class XScaffoldiOSStyle {
  
}

class XScaffoldAndroidStyle {

}



class XScaffold extends StatelessWidget with PlatformMixin<XScaffoldiOSStyle, XScaffoldAndroidStyle> {

  XScaffold({Key key, this.navigationBar, this.content, PlatformDataProvider dataProvider})
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
