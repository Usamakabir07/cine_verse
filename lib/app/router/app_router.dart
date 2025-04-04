import 'package:auto_route/auto_route.dart';

import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/login_page/login_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: DashboardRoute.page, initial: false),
      ];
}
