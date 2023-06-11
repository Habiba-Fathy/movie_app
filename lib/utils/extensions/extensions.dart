import 'package:flutter/material.dart';

extension EmptySpace on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

extension ImagePath on String {
  String get toImage => 'assets/images/$this.png';
  String get toSvg => 'assets/svg/$this.svg';
}
