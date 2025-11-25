import 'package:flutter/widgets.dart';

extension MediaQueryExt on BuildContext {
  /// MediaQuery of this [BuildContext]
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Display size (from MediaQuery) of this [BuildContext]
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Content padding of MediaQuery of this [BuildContext]
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  /// Platform brightness
  Brightness get platformBrightness => MediaQuery.platformBrightnessOf(this);

  /// Device orientation
  Orientation get orientation => MediaQuery.orientationOf(this);

  /// Whether in landscape orientation
  bool get isLandscape => orientation == Orientation.landscape;

  /// Shortest display size
  double get screenShortestSide => screenSize.shortestSide;
}
