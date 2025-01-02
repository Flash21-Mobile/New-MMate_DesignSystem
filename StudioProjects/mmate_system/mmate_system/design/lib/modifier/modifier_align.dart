part of 'modifier.dart';

extension ModifierAlign on Modifier {

  Modifier alignment(Alignment alignment) {
    _alignment = alignment;

    return this;
  }
}