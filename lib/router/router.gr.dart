// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:e_shoping_app/features/get_single_product/presentation/single_product_view.dart'
    deferred as _i1;
import 'package:e_shoping_app/features/home/presentation/home_screen.dart'
    deferred as _i2;
import 'package:e_shoping_app/features/login/presentation/login_screen.dart'
    deferred as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SingleProductRouter.name: (routeData) {
      final args = routeData.argsAs<SingleProductRouterArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.SingleProductView(
            key: args.key,
            id: args.id,
          ),
        ),
      );
    },
    HomeScreenRouter.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.HomeScreen(),
        ),
      );
    },
    LoginScreenRouter.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.LoginScreen(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.SingleProductView]
class SingleProductRouter extends _i4.PageRouteInfo<SingleProductRouterArgs> {
  SingleProductRouter({
    _i5.Key? key,
    required int id,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          SingleProductRouter.name,
          args: SingleProductRouterArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleProductRouter';

  static const _i4.PageInfo<SingleProductRouterArgs> page =
      _i4.PageInfo<SingleProductRouterArgs>(name);
}

class SingleProductRouterArgs {
  const SingleProductRouterArgs({
    this.key,
    required this.id,
  });

  final _i5.Key? key;

  final int id;

  @override
  String toString() {
    return 'SingleProductRouterArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRouter extends _i4.PageRouteInfo<void> {
  const HomeScreenRouter({List<_i4.PageRouteInfo>? children})
      : super(
          HomeScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRouter';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRouter extends _i4.PageRouteInfo<void> {
  const LoginScreenRouter({List<_i4.PageRouteInfo>? children})
      : super(
          LoginScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRouter';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
