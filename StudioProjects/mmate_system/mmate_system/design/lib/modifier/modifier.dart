library;

import 'package:design_system/util/fontSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'modifier_align.dart';
part 'modifier_color.dart';
part 'modifier_function.dart';
part 'modifier_shape.dart';
part 'modifier_size.dart';

part '../widget/text.dart';

class Modifier {
  // Color
  Color? _backgroundColor;

  // Shape
  EdgeInsets? _padding;
  EdgeInsets? _margin;
  BorderRadius? _roundedCornerRadius;

  // align
  Alignment? _alignment;

  // Size
  double? _width;
  double? _height;
  bool? _fillMaxWidth;
  bool? _fillMaxHeight;
  bool? _fillMaxSize;

  // Function
  GestureTapCallback? _clickable;
}
