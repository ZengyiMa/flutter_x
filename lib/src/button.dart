import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'mixin/platform_mixin.dart';
import 'platform_data_provider.dart';


class XButtonCupertinoData {
  
}

class XButtonmaterialData {
  
}


class XButton extends StatelessWidget with PlatformMixin<XButtonCupertinoData, XButtonmaterialData> {
  XButton(
      {Key key,
      @required this.child,
      @required this.onPressed,
      this.color,
      this.disabledColor,
      this.padding,
      PlatformDataProvider<XButtonCupertinoData, XButtonmaterialData> dataProvider
      })
      : super(key: key) {
        inititalPlatformDataProvider(dataProvider);
      }

  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final Color disabledColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget cupertinoStyleWidget(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      color: color,
      disabledColor: disabledColor,
      padding: padding,
    );
  }

  @override
  Widget materialStyleWidget(BuildContext context) {
    return RaisedButton(
      child: child,
      onPressed: onPressed,
      color: color,
      disabledColor: disabledColor,
      padding: padding,
    );
  }
}
