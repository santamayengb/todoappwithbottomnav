import 'package:auto_route/auto_route.dart';

import 'package:todoappwithbottomnav/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
      children: [
        AutoRoute(name: 'HomeTabRouter', page: HomePage),
        AutoRoute(name: 'OtherTabRouter', page: OtherPage),
      ],
    ),
    AutoRoute(page: OtherPage),
  ],
)
class $AppRouter {}
