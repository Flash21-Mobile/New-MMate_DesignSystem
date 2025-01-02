part of 'modifier.dart';

extension ModifierColor on Modifier {
  Modifier background(Color color) {
    _backgroundColor = color;
    return this;
  }
}