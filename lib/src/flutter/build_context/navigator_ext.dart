import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'theme_ext.dart';

extension NavigatorExt on BuildContext {
  /// Navigator of this [BuildContext]
  NavigatorState get navigator => Navigator.of(this);

  /// Whether the navigator that most tightly encloses the given context can be
  /// popped.
  bool canPop() => Navigator.canPop(this);

  /// Pop the top-most route off the navigator that most tightly encloses the
  /// given context.
  void pop<T extends Object?>([T? result]) => Navigator.pop(this, result);

  /// Calls [pop] repeatedly until the predicate returns true.
  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);

  /// Push the given route onto the navigator that most tightly encloses the
  /// given context.
  Future<T?> push<T>(Route<T> route) => Navigator.push(this, route);

  /// Push [MaterialPageRoute] onto the navigator that most tightly encloses the
  /// given context.
  Future<T?> pushMaterial<T>(
    WidgetBuilder builder, {
    bool fullScreenDialog = false,
  }) => Navigator.push<T>(
    this,
    MaterialPageRoute(builder: builder, fullscreenDialog: fullScreenDialog),
  );

  /// Push [MaterialPageRoute] or [CupertinoPageRoute] depending on current
  /// platform onto the navigator that most tightly encloses the given context.
  Future<T?> pushPlatform<T>(
    WidgetBuilder builder, {
    bool fullScreenDialog = false,
    String? title,
    bool rootNavigator = false,
  }) {
    return Navigator.of(this, rootNavigator: rootNavigator).push<T>(
      isMaterial
          ? MaterialPageRoute(
              builder: builder,
              fullscreenDialog: fullScreenDialog,
            )
          : CupertinoPageRoute(
              builder: builder,
              fullscreenDialog: fullScreenDialog,
              title: title,
            ),
    );
  }

  /// Push a named route onto the navigator that most tightly encloses the given
  /// context.
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.pushNamed(this, routeName, arguments: arguments);

  /// Replace the current route of the navigator that most tightly encloses the
  /// given context by pushing the given route and then disposing the previous
  /// route once the new route has finished animating in.
  Future<T?> pushReplacement<T>(Route<T> route) =>
      Navigator.pushReplacement(this, route);

  /// Replace the current route of the navigator that most tightly encloses the
  /// given context by pushing [MaterialPageRoute] and then disposing the previous
  /// route once the new route has finished animating in.
  Future<T?> pushReplacementMaterial<T>(WidgetBuilder builder) =>
      Navigator.pushReplacement(this, MaterialPageRoute(builder: builder));
}
