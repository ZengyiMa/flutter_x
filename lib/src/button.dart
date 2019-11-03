import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base/stateless_widget.dart';
import 'package:meta/meta.dart';

const double kMinInteractiveDimensionCupertino = 44.0;

class XButtonCupertinoData {
   const XButtonCupertinoData({
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.1,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
   });

  final double minSize;
  final double pressedOpacity;
  final BorderRadius borderRadius;
}

class XButtonmaterialData {
  const XButtonmaterialData({
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
  });

  final ValueChanged<bool> onHighlightChanged;
  final ButtonTextTheme textTheme;
  final Color textColor;
  final Color disabledTextColor;
  final Color focusColor;
  final Color hoverColor;
  final Color highlightColor;
  final Color splashColor;
  final Brightness colorBrightness;
  final double elevation;
  final double focusElevation;
  final double hoverElevation;
  final double highlightElevation;
  final double disabledElevation;
  final ShapeBorder shape;
  final Clip clipBehavior;
  final FocusNode focusNode;
  final bool autofocus;
  final MaterialTapTargetSize materialTapTargetSize;
  final Duration animationDuration;
  final double minWidth;
  final double height;
}

class XButton extends XStatelessWidget {
  const XButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.color,
    this.disabledColor,
    this.padding,
    XButtonCupertinoData cupertinoData,
    XButtonCupertinoData materialData,
  }) : super(key, material: materialData, cupertino: cupertinoData);

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
