import '../platform.dart';
import 'package:flutter/widgets.dart';


class PlatformMixin {
  Widget build(BuildContext context) {
    if (XPlatform.style() == XAppStyle.material) {
      return materialStyleWidget(context);
    } else if (XPlatform.style() == XAppStyle.cupertino) {
      return cupertinoStyleWidget(context);
    } else {
      return null;
    }
  }

  Widget cupertinoStyleWidget(BuildContext context) {
    return null;
  }

  Widget materialStyleWidget(BuildContext context) {
    return null;
  }
}
