import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class FXAppTheme extends Diagnosticable {
  const FXAppTheme({this.primaryColor, this.navigationBarBackgroundColor, this.titleStyle});
  
  final Color primaryColor;
  final Color navigationBarBackgroundColor;
  final TextStyle titleStyle;
}
