import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class XAppTheme extends Diagnosticable {
  const XAppTheme(
      {this.primaryColor,
      this.navigationBarBackgroundColor,
      this.titleStyle,
      this.materialThemeData,
      this.cupertinoThemeData});

  final Color primaryColor;
  final Color navigationBarBackgroundColor;
  final TextStyle titleStyle;

  // Platform special, will ignore other attributes
  final ThemeData materialThemeData;
  final CupertinoThemeData cupertinoThemeData;
}
