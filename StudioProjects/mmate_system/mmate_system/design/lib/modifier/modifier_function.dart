part of 'modifier.dart';

extension ModifierFunction on Modifier {

  /// @example
  /// clickable(() { ** 로직 ** })
  Modifier clickable(GestureTapCallback clickable) {
    _clickable = clickable;
    return this;
  }
}
