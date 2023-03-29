import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_main/pages/home.dart';
import 'package:go_router_main/pages/option_chain.dart';
import 'package:go_router_main/pages/screenes.dart';
import 'package:go_router_main/pages/symbol_details.dart';
import 'package:go_router_main/pages/symbol_details_2.dart';
import 'package:go_router_main/widgets/nav_bar.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

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
            pageBuilder: (context, state) {
              if (kIsWeb) {
                MetaSEO meta = MetaSEO();
                meta.ogTitle(ogTitle: 'Home Screen');
                meta.description(description: 'First Screen demo seo ');
                meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
              }
              return CustomSlideTransition(key: state.pageKey, child: Home());
            },
          ),
          GoRoute(
            path: '/options',
            pageBuilder: (context, state) {
              if (kIsWeb) {
                MetaSEO meta = MetaSEO();
                meta.ogTitle(ogTitle: 'Options Screen');
                meta.description(description: 'First Screen demo seo ');
                meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
              }
              return CustomSlideTransition(
                  key: state.pageKey, child: OptionChain());
            },
          ),
          // Displayed ShellRoute's Navigator.
          GoRoute(
              path: '/screeners',
              pageBuilder: (BuildContext context, GoRouterState state) {
                if (kIsWeb) {
                  MetaSEO meta = MetaSEO();
                  meta.ogTitle(ogTitle: 'Screeners Screen');
                  meta.description(description: 'First Screen demo seo ');
                  meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
                }
                return CustomSlideTransition(
                  key: state.pageKey,
                  child: Screeners(),
                );
              },
              routes: [
                GoRoute(
                    path: 'symbol_details',
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      if (kIsWeb) {
                        MetaSEO meta = MetaSEO();
                        meta.ogTitle(ogTitle: 'Symbol-Details Screen');
                        meta.description(description: 'First Screen demo seo ');
                        meta.keywords(
                            keywords: 'Flutter, Dart, SEO, Meta, Web');
                      }
                      return CustomSlideTransition(
                          key: state.pageKey, child: SymbolDetails());
                    },
                    routes: [
                      GoRoute(
                          path: 'symbol_details2',
                          pageBuilder:
                              (BuildContext context, GoRouterState state) {
                            if (kIsWeb) {
                              MetaSEO meta = MetaSEO();
                              meta.ogTitle(ogTitle: 'Symbol-Details 2 Screen');
                              meta.description(
                                  description: 'First Screen demo seo ');
                              meta.keywords(
                                  keywords: 'Flutter, Dart, SEO, Meta, Web');
                            }
                            return CustomSlideTransition(
                              key: state.pageKey,
                              child: SymbolDetails2(),
                            );
                          })
                    ]),
              ]),
        ],
      ),
    ],
  );
}

class CustomSlideTransition extends CustomTransitionPage<void> {
  CustomSlideTransition({super.key, required super.child})
      : super(
          // transitionDuration: const Duration(milliseconds: 250),
          transitionsBuilder: (_, animation, __, child) {
            // return SlideTransition(
            //   position: animation.drive(
            //     Tween(
            //       begin: const Offset(1, 0),
            //       end: Offset.zero,
            //     ).chain(
            //       CurveTween(curve: Curves.ease),
            //     ),
            //   ),
            //   child: child,
            // );
            return  Hero(
            tag: 'imageHero',
            child: child
          );
          },
        );
}
