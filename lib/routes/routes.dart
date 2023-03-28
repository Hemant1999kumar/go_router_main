import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_main/pages/home.dart';
import 'package:go_router_main/pages/option_chain.dart';
import 'package:go_router_main/pages/screenes.dart';
import 'package:go_router_main/widgets/nav_bar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

  class Fy_Router {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return NavBar(child: child);
        },
        routes: [
          // This screen is displayed on the ShellRoute's Navigator.
          GoRoute(
            path: '/',
            builder: (context, state) {
              return const Home();
            },),
            GoRoute(
            path: '/options',
            builder: (context, state) {
              return const OptionChain();
            }),
          // Displayed ShellRoute's Navigator.
          GoRoute(
            path: '/screeners',
            builder: (BuildContext context, GoRouterState state) {
              return const Screeners();
            },
          ),
        ],
      ),
    ],
  );
  }