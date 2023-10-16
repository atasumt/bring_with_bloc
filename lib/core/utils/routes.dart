import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';
import 'package:brinch_with_bloc/core/utils/route_name_consts.dart';
import 'package:brinch_with_bloc/future/home/home_page.dart';
import 'package:brinch_with_bloc/future/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

BuildContext get globalCtx => routerSettings.routerDelegate.navigatorKey.currentContext!;

final GoRouter routerSettings = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: RouteNameConstants.home,
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        DogResponseData dogResponseData = state.extra as DogResponseData;
        return HomePage(dogResponseData);
      },
    ),
  ],
);
