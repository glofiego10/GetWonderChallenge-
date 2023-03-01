import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_app/auth/page_login.dart';
import 'package:my_app/home/page_home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: PageHome,
      transitionsBuilder: TransitionsBuilders.slideTop,
    ),
    AutoRoute(page: PageLogin),
  ],
)
class $AppRouter {}
