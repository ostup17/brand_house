import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/presentation/catalog/catalog.dart';
import 'features/presentation/home/home.dart';
import 'features/presentation/login/login.dart';
import 'features/presentation/registration/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    theme: ThemeData(
      fontFamily: 'Nunito'
    ),
    debugShowCheckedModeBanner: false,
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    routeInformationProvider: _router.routeInformationProvider,
    title: 'GoRouter Example',
  );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Login() ,
      ),
      GoRoute(
        path: '/registration',
        builder: (BuildContext context, GoRouterState state) => Registration(),
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) => const Home(),
      ),
    ],
  );
}
