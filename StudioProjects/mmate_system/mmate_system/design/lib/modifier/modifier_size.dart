part of 'modifier.dart';

extension ModifierSize on Modifier {

  Modifier fillMaxWidth() {
    _fillMaxWidth = true;
    return this;
  }

  Modifier fillMaxHeight() {
    _fillMaxHeight = true;
    return this;
  }

  /// # 대부분의 상황에서 사용 불가
  /// ### 어지간하면 쓰지 말것
  Modifier fillMaxSize() {
    _fillMaxSize = true;
    return this;
  }

  Modifier width(double width) {
    _width = width;
    return this;
  }

  Modifier height(double height) {
    _height = height;
    return this;
  }
}