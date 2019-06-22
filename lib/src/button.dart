import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'mixin/platform_mixin.dart';

class XButton extends StatelessWidget with PlatformMixin {
  XButton({
    Key key,
    @required this.child,
    @required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;


  @override
  Widget cupertinoStyleWidget(BuildContext context) {
    return CupertinoButton(child: child, onPressed: this.onPressed,);
  }

  @override
  Widget materialStyleWidget(BuildContext context) {
    return RaisedButton(child: this.child, onPressed: this.onPressed);
  }
}
