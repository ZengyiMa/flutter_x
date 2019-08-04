import 'platform_data_provider.dart';

mixin MaterialDataMixin<T> {
  final PlatformDataProvider<T> materialDataProvider =
      PlatformDataProvider<T>();
  set materialWidgetData(T data) => materialDataProvider.data = data;
  T get materialWidgetData => materialDataProvider.data;
}
