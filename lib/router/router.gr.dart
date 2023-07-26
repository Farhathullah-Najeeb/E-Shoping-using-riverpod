// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:e_shoping_app/features/get_all_carts/presentation/get_all_carts.dart'
    deferred as _i5;
import 'package:e_shoping_app/features/get_single_product/presentation/single_product_view.dart'
    deferred as _i1;
import 'package:e_shoping_app/features/get_specefic_categories/presentation/specefic_category.dart'
    deferred as _i4;
import 'package:e_shoping_app/features/home/presentation/home_screen.dart'
    deferred as _i2;
import 'package:e_shoping_app/features/login/presentation/login_screen.dart'
    deferred as _i3;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SingleProductRouter.name: (routeData) {
      final args = routeData.argsAs<SingleProductRouterArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.SingleProductView(
            key: args.key,
            id: args.id,
          ),
        ),
      );
    },
    HomeScreenRouter.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.HomeScreen(),
        ),
      );
    },
    LoginScreenRouter.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.LoginScreen(),
        ),
      );
    },
    SpecificCategoryRouter.name: (routeData) {
      final args = routeData.argsAs<SpecificCategoryRouterArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.SpecificCategory(
            key: args.key,
            category: args.category,
          ),
        ),
      );
    },
    GetAllCrartsRouter.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.GetAllCarts(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.SingleProductView]
class SingleProductRouter extends _i6.PageRouteInfo<SingleProductRouterArgs> {
  SingleProductRouter({
    _i7.Key? key,
    required int id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SingleProductRouter.name,
          args: SingleProductRouterArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleProductRouter';

  static const _i6.PageInfo<SingleProductRouterArgs> page =
      _i6.PageInfo<SingleProductRouterArgs>(name);
}

class SingleProductRouterArgs {
  const SingleProductRouterArgs({
    this.key,
    required this.id,
  });

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'SingleProductRouterArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRouter extends _i6.PageRouteInfo<void> {
  const HomeScreenRouter({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRouter';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRouter extends _i6.PageRouteInfo<void> {
  const LoginScreenRouter({List<_i6.PageRouteInfo>? children})
      : super(
          LoginScreenRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRouter';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SpecificCategory]
class SpecificCategoryRouter
    extends _i6.PageRouteInfo<SpecificCategoryRouterArgs> {
  SpecificCategoryRouter({
    _i7.Key? key,
    required String category,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SpecificCategoryRouter.name,
          args: SpecificCategoryRouterArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecificCategoryRouter';

  static const _i6.PageInfo<SpecificCategoryRouterArgs> page =
      _i6.PageInfo<SpecificCategoryRouterArgs>(name);
}

class SpecificCategoryRouterArgs {
  const SpecificCategoryRouterArgs({
    this.key,
    required this.category,
  });

  final _i7.Key? key;

  final String category;

  @override
  String toString() {
    return 'SpecificCategoryRouterArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i5.GetAllCarts]
class GetAllCrartsRouter extends _i6.PageRouteInfo<void> {
  const GetAllCrartsRouter({List<_i6.PageRouteInfo>? children})
      : super(
          GetAllCrartsRouter.name,
          initialChildren: children,
        );

  static const String name = 'GetAllCrartsRouter';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
