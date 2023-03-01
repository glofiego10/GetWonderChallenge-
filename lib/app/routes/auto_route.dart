import 'package:auto_route/auto_route.dart';
import 'package:my_app/auth/page_login.dart';
import 'package:my_app/home/page_home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: PageHome,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: PageLogin,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
)
class $AppRouter {}
