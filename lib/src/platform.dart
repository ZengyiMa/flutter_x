import 'dart:io';

enum FXPlatformType { other, android, iOS }
enum FXAppStyle { auto, material, cupertino }

class FXPlatform {
  static FXAppStyle appStyle;
  static FXAppStyle style() {
    if (appStyle == FXAppStyle.material) {
      return FXAppStyle.material;
    } else if (appStyle == FXAppStyle.cupertino) {
      return FXAppStyle.cupertino;
    }
    if (Platform.isAndroid) {
      return FXAppStyle.material;
    } else if (Platform.isIOS) {
      return FXAppStyle.cupertino;
    } else {
      return FXAppStyle.auto;
    }
  }

  static FXPlatformType platform() {
    if (Platform.isAndroid) {
      return FXPlatformType.android;
    } else if (Platform.isIOS) {
      return FXPlatformType.iOS;
    } else {
      return FXPlatformType.other;
    }
  }
}
