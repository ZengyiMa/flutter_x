import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'platform.dart';

class FXNavigationBar extends StatelessWidget {
  const FXNavigationBar(
      {Key key,
      this.title,
      this.titleTextStyle,
      this.leading,
      this.actions,
      this.backgroundColor,
      this.hiddenBottomEffect})
      : super(key: key);

  final String title;
  final TextStyle titleTextStyle;
  final List<Widget> actions;
  final Widget leading;
  final Color backgroundColor;
  final bool hiddenBottomEffect;

  @override
  Widget build(BuildContext context) {
    if (FXPlatform.style() == FXAppStyle.material) {
      return AppBar(
        title: Text(this.title, style: this.titleTextStyle),
        actions: this.actions,
        leading: leading,
        backgroundColor: this.backgroundColor,
        elevation: hiddenBottomEffect == false ? 0 : null,
      );
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoNavigationBar(
        middle: Text(this.title, style: this.titleTextStyle),
        trailing: this.actions != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: this.actions,
              )
            : null,
        leading: this.leading,
        backgroundColor: this.backgroundColor,
        border: hiddenBottomEffect == false ? null : Border(bottom: null),
      );
    } else {
      return null;
    }
  }
}
