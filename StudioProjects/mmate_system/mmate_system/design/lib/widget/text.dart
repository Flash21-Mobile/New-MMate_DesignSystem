part of '../modifier/modifier.dart';

class MmText extends StatelessWidget {
  // Text
  final String data;

  // element
  final Modifier? modifier;
  final TextStyle? style;

  const MmText(this.data, {super.key, this.modifier, this.style});

  Widget getCurrentSize(Widget child) {
    var resultWidget = child;
    if (modifier?._fillMaxSize != null) resultWidget = getMaxSize(child);
    if (modifier?._fillMaxWidth != null) resultWidget = getMaxWidth(child);
    if (modifier?._fillMaxHeight != null) resultWidget = getMaxHeight(child);

    return resultWidget;
  }

  Widget getMaxWidth(Widget child) =>
      SizedBox(width: double.infinity, child: child);

  Widget getMaxHeight(Widget child) =>
      SizedBox(height: double.infinity, child: child);

  Widget getMaxSize(Widget child) =>
      SizedBox(width: double.infinity, height: double.infinity, child: child);

  @override
  Widget build(BuildContext context) {
    var mmText = InkWell(
        onTap: modifier?._clickable,
        child: Container(
            alignment: modifier?._alignment,
            width: modifier?._width,
            height: modifier?._height,
            padding: modifier?._padding,
            margin: modifier?._margin,
            decoration: BoxDecoration(
                color: modifier?._backgroundColor,
                borderRadius: modifier?._roundedCornerRadius),
            child: Text(
              data,
              style: style,
            )));

    return getCurrentSize(mmText);
  }
}

class MmTitleText extends StatelessWidget {
  const MmTitleText(this.data, {super.key, this.modifier});

  final String data;
  final Modifier? modifier;

  @override
  Widget build(BuildContext context) {
    return MmText(data,
        modifier: modifier,
        style: TextStyle(
            fontSize: DynamicFontSize.font24(context),
            fontWeight: FontWeight.w700));
  }
}
