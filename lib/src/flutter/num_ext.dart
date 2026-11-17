import 'package:material_ui/material_ui.dart';

/// Shorthands for gaps
extension GapExt on num {
  /// Square gap
  Widget get gap => SizedBox(width: toDouble(), height: toDouble());

  /// Horizontal gap
  Widget get gapH => SizedBox(width: toDouble());

  /// Vertical gap
  Widget get gapV => SizedBox(height: toDouble());

  /// Square gap for sliver
  SliverPadding get sliverGap => SliverPadding(
    padding: EdgeInsets.only(top: toDouble(), left: toDouble()),
  );

  /// Horizontal gap for sliver
  SliverPadding get sliverGapH =>
      SliverPadding(padding: EdgeInsets.only(left: toDouble()));

  /// Vertical gap for sliver
  SliverPadding get sliverGapV =>
      SliverPadding(padding: EdgeInsets.only(top: toDouble()));
}
