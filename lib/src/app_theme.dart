import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class AppTheme extends Diagnosticable {
  const AppTheme({this.primaryColor, this.navigationBarBackgroundColor, this.titleStyle});
  
  final Color primaryColor;
  final Color navigationBarBackgroundColor;
  final TextStyle titleStyle;
}
