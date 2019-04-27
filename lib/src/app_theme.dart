import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class FXAppTheme extends Diagnosticable {
  const FXAppTheme(
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
