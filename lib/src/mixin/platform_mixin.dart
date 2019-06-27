import '../platform.dart';
import 'package:flutter/widgets.dart';
import '../platform_data_provider.dart';


class PlatformMixin<C, M> {

  final PlatformDataProvider<C, M> dataProvider = new PlatformDataProvider();

  void inititalPlatformDataProvider(PlatformDataProvider<C, M> provider) {
      this.dataProvider.cupertinoWidgetData = provider?.cupertinoWidgetData;
      this.dataProvider.materialWidgetData = provider?.materialWidgetData;
  }

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
