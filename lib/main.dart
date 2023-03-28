import 'package:flutter/material.dart';
import 'package:go_router_main/routes/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy  ();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: Fy_Router.router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

