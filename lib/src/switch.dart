import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base_platform_mixin.dart';
import 'package:flutter/gestures.dart';

class XSwitch extends StatelessWidget with BasePlatformMixin {
  XSwitch({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.inactiveThumbImage,
    this.materialTapTargetSize,
    this.dragStartBehavior = DragStartBehavior.down,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color activeTrackColor;
  final Color inactiveThumbColor;
  final Color inactiveTrackColor;
  final ImageProvider activeThumbImage;
  final ImageProvider inactiveThumbImage;
  final MaterialTapTargetSize materialTapTargetSize;
  final DragStartBehavior dragStartBehavior;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      onChanged: onChanged,
      value: value,
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      inactiveThumbImage: inactiveThumbImage,
      materialTapTargetSize: materialTapTargetSize,
      dragStartBehavior: dragStartBehavior,
    );
  }
}
