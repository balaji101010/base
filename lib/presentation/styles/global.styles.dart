import 'package:flutter/material.dart';

///
class GlobalTheme {

  ///
  AppBarTheme getAppbarTheme(BuildContext context) {
    return Theme.of(context).appBarTheme;
  }

  TextTheme getTextTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  static ColorScheme getColorScheme(BuildContext context){
    return Theme.of(context).colorScheme;
  }
}
