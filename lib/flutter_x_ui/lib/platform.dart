import 'dart:io';

enum XPlatformType { other, android, iOS }
enum XAppStyle { auto, material, cupertino }

class XPlatform {
  static XAppStyle appStyle;
  static XAppStyle style() {
    if (appStyle == XAppStyle.material) {
      return XAppStyle.material;
    } else if (appStyle == XAppStyle.cupertino) {
      return XAppStyle.cupertino;
    }
    if (Platform.isAndroid) {
      return XAppStyle.material;
    } else if (Platform.isIOS) {
      return XAppStyle.cupertino;
    } else {
      return XAppStyle.auto;
    }
  }

  static XPlatformType platform() {
    if (Platform.isAndroid) {
      return XPlatformType.android;
    } else if (Platform.isIOS) {
      return XPlatformType.iOS;
    } else {
      return XPlatformType.other;
    }
  }
}
