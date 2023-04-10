// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:starter/presentation/ui/screens/home/home.screen.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i2.PageRouteInfo<void> {
  const HomeScreen({List<_i2.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
