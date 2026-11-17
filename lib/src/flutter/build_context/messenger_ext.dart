import 'package:material_ui/material_ui.dart';

/// ScaffoldMessenger-related shorthands for [BuildContext]
extension MessengerExt on BuildContext {
  /// [ScaffoldMessenger] of this context
  ScaffoldMessengerState? get scaffoldMessenger =>
      ScaffoldMessenger.maybeOf(this);

  /// Shows [SnackBar]
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? showSnackBar(
    SnackBar snackBar,
  ) => ScaffoldMessenger.maybeOf(this)?.showSnackBar(snackBar);
}
