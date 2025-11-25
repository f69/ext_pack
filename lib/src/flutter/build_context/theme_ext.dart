import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  /// The data from the closest [Theme] instance that encloses this context.
  ThemeData get theme => Theme.of(this);

  /// The data from the closest [CupertinoTheme] instance that encloses this
  /// context.
  CupertinoThemeData get cupertinoTheme => CupertinoTheme.of(this);

  /// Whether Brightness of the closest [Theme] instance that encloses this
  /// context is dark.
  bool get isDark => theme.brightness == Brightness.dark;

  /// [TextTheme] from the closest [Theme] instance that encloses this context.
  TextTheme get textTheme => theme.textTheme;

  /// [IconTheme] from the closest [Theme] instance that encloses this context.
  IconThemeData get iconTheme => IconTheme.of(this);

  /// [ColorScheme] from the closest [Theme] instance that encloses this context.
  ColorScheme get colorScheme => theme.colorScheme;
}

extension ThemeColorsExt on BuildContext {
  /// Primary color of the nearest [Theme]
  Color get primaryColor => theme.primaryColor;

  /// Background color of the nearest [Theme]
  Color get backgroundColor => theme.colorScheme.surface;

  /// Scaffold background color of the nearest [Theme]
  Color get scaffoldBgColor => isCupertino
      ? cupertinoTheme.scaffoldBackgroundColor
      : theme.scaffoldBackgroundColor;

  /// Card background color of the nearest [Theme]
  Color get cardColor => theme.cardColor;

  /// Disabled color of the nearest [Theme]
  Color get disabledColor => theme.disabledColor;

  /// Divider color of the nearest [Theme]
  Color get dividerColor => theme.dividerColor;

  /// Text color of the nearest [Theme]
  Color? get bodyTextColor => theme.textTheme.bodyMedium?.color;
}

extension ThemePlatformExt on BuildContext {
  /// [TargetPlatform] from the closest [Theme] instance that encloses this
  /// context.
  TargetPlatform get platform => theme.platform;

  /// Whether is Cupertino style target platform
  bool get isCupertino =>
      [TargetPlatform.iOS, TargetPlatform.macOS].contains(platform);

  /// Whether is Material style target platform
  bool get isMaterial => !isCupertino;
}
