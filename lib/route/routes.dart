// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:flutter_popular/first_page.dart';
import 'package:flutter_popular/home_page.dart';
import 'package:flutter_popular/login/login_manager.dart';
import 'package:flutter_popular/login/login_page.dart';
import 'package:flutter_popular/route/routes.gr.dart';
import 'package:flutter_popular/second_page.dart';
import 'package:flutter_popular/third_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: FirstPage),
    AutoRoute(page: SecondPage),
    AutoRoute(page: ThirdPage, guards: [AuthGuard]),
    AutoRoute(page: LoginPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (LoginManager.isLogin) {
      resolver.next(true);
    } else {
      router.push(LoginRoute(successCallback: (success)  {
        resolver.next(success);
      }));
    }
  }
}