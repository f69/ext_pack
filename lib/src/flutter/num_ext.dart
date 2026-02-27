import 'package:flutter/material.dart';

extension GapExt on num {
  Widget get gap => SizedBox(width: toDouble(), height: toDouble());

  Widget get gapH => SizedBox(width: toDouble());

  Widget get gapV => SizedBox(height: toDouble());

  SliverPadding get sliverGap => SliverPadding(
    padding: EdgeInsets.only(top: toDouble(), left: toDouble()),
  );

  SliverPadding get sliverGapH =>
      SliverPadding(padding: EdgeInsets.only(left: toDouble()));

  SliverPadding get sliverGapV =>
      SliverPadding(padding: EdgeInsets.only(top: toDouble()));
}
