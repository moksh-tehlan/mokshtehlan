import 'package:auto_route/auto_route.dart';
import 'package:mokshtehlan/navigation/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(path: '/', page: HomeRoute.page, initial: true)];
}
