import 'package:my_get_http_architecture/common/resources/page_path.dart';
import 'package:my_get_http_architecture/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final globalContext = _rootNavigatorKey.currentContext;
// uncomment to use shell navigator
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>();
final GlobalKey<OverlayState> overlayState = GlobalKey<OverlayState>();

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: PagePath.slash,
    observers: [],
    routes: [
      GoRoute(
        path: PagePath.slash,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
    ],
  );
}
