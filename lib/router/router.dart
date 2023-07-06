import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: LoginScreenRouter.page,
          path: '/',
        ),
        AutoRoute(
          page: HomeScreenRouter.page,
          path: '/HomeScreenRouter',
        ),
        AutoRoute(
          page: SingleProductRouter.page,
          path: '/SingleProductRouter',
        )
      ];
}
