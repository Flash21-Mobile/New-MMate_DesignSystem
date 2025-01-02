part of 'modifier.dart';

extension ModifierShape on Modifier {
  Modifier padding(
      {double? left,
      double? right,
      double? top,
      double? bottom,
      double? horizontal,
      double? vertical,
      double? all}) {

    /// 우선순위 start, end, top, bottom -> horizontal, vertical -> all
    _padding = EdgeInsets.only(
      left: left ?? horizontal ?? all ?? 0,
      top: top ?? vertical ?? all ?? 0,
      right: right ?? horizontal ?? all ?? 0,
      bottom: bottom ?? vertical ?? all ?? 0,
    );
    return this;
  }

  /// 우선순위 start, end, top, bottom -> horizontal, vertical -> all
  Modifier margin(
      {double? left,
      double? right,
      double? top,
      double? bottom,
      double? horizontal,
      double? vertical,
      double? all}) {

    _margin = EdgeInsets.only(
      left: left ?? horizontal ?? all ?? 0,
      top: top ?? vertical ?? all ?? 0,
      right: right ?? horizontal ?? all ?? 0,
      bottom: bottom ?? vertical ?? all ?? 0,
    );
    return this;
  }

  /// Clip되는게 아니고 background값이 있을때만 적용
  Modifier roundedCornerRadius(double roundedCornerRadius){
    _roundedCornerRadius = BorderRadius.circular(roundedCornerRadius);
    return this;
  }
}
