import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base/stateless_widget.dart';

const Color _kDefaultNavBarBorderColor = Color(0x4C000000);

const Border _kDefaultNavBarBorder = Border(
  bottom: BorderSide(
    color: _kDefaultNavBarBorderColor,
    width: 0.0, // One physical pixel.
    style: BorderStyle.solid,
  ),
);


class XNavigationBarCupertinoData {

}

class XNavigationBarMaterialData {

}

class XNavigationBar extends XStatelessWidget<XNavigationBarMaterialData, XNavigationBarCupertinoData> {
  XNavigationBar(
      {Key key,
      this.title,
      this.titleTextStyle,
      this.leading,
      this.actions,
      this.backgroundColor,
      this.hiddenBottomEffect, 
      XNavigationBarCupertinoData cupertinoData,
      XNavigationBarMaterialData materialData,
      }):super(key, material: materialData, cupertino: cupertinoData);

  final String title;
  final TextStyle titleTextStyle;
  final List<Widget> actions;
  final Widget leading;
  final Color backgroundColor;
  final bool hiddenBottomEffect;

  @override
  Widget materialStyleWidget(BuildContext context) {
    return AppBar(
      title: Text(this.title, style: this.titleTextStyle),
      actions: this.actions,
      leading: leading,
      backgroundColor: this.backgroundColor,
      elevation: hiddenBottomEffect == true ? 0 : null,
    );
  }

  @override
  Widget cupertinoStyleWidget(BuildContext context) {
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
      border: hiddenBottomEffect == true ? null : _kDefaultNavBarBorder,
    );
  }
}
