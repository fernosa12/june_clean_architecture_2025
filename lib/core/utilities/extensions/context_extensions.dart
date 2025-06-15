import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

extension ContextExtension on BuildContext {
  /// Returns the [ThemeData] of the current context.
  // ThemeData get theme => Theme.of(this);

  /// Returns the [TextTheme] of the current context.
  // TextTheme get textTheme => theme.textTheme;

  /// Returns the [ColorScheme] of the current context.
  // ColorScheme get colorScheme => theme.colorScheme;

  Color get textColor => theme.typography.base.color ?? Colors.black;

  EdgeInsets get padding => MediaQuery.of(this).padding;
}
