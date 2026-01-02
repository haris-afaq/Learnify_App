import 'package:flutter/widgets.dart';

extension SizedBoxExtension on num {
  //width
  SizedBox get width => SizedBox(width: toDouble());

  //height
  SizedBox get height => SizedBox(height: toDouble());
}
