import 'platform_data_provider.dart';

mixin CupertinoDataMixin<T> {
  final PlatformDataProvider<T> cupertinoDataProvider =
      PlatformDataProvider<T>();
  set cupertinoWidgetData(T data) => cupertinoDataProvider.data = data;
  T get cupertinoWidgetData => cupertinoDataProvider.data;
}
