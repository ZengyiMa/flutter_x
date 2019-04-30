import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base_platform_stateless_widget.dart';

typedef ValueChanged<T> = void Function(T value);

class FXSwitch extends BasePlatformStatelessWidget {
  const FXSwitch({
    Key key,
    this.value,
    this.onChanged
  }) : super(key: key);

  final bool value;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      onChanged: onChanged,
      value: value,
    );
  }
}
