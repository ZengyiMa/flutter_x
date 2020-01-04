import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base/stateless_widget.dart';

class XSlider extends XStatelessWidget {
  XSlider(
      {Key key,
      @required this.value,
      @required this.onChanged,
      this.onChangeStart,
      this.onChangeEnd,
      this.min,
      this.max,
      this.divisions,
      this.label,
      this.activeColor,
      this.inactiveColor,
      this.semanticFormatterCallback})
      : super(key);

  final double value;
  final ValueChanged<double> onChanged;
  final ValueChanged<double> onChangeStart;
  final ValueChanged<double> onChangeEnd;
  final double min;
  final double max;
  final int divisions;
  final String label;
  final Color activeColor;
  final Color inactiveColor;
  final SemanticFormatterCallback semanticFormatterCallback;

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
        value: value,
        onChanged: onChanged,
        onChangeStart: onChangeStart,
        onChangeEnd: onChangeEnd,
        min: min,
        max: max,
        divisions: divisions,
        label: label,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        semanticFormatterCallback: semanticFormatterCallback);
  }
}
