import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_clean_architecture_june_2025/presentations/home/home.dart';

final dashboardNavigatorKey = GlobalKey<NavigatorState>();
final rootNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeView()),
    // GoRoute(
    //   path: '/',
    //   name: 'splash',
    //   builder: (context, state) => const SplashView(),
    // ),
    // ShellRoute(
    //   navigatorKey: dashboardNavigatorKey,
    //   builder: (context, state, child) => DashboardView(child: child),

    //   routes: [
    //     GoRoute(path: '/home', builder: (context, state) => const HomeView()),
    //     GoRoute(path: '/user', builder: (context, state) => const UserView()),
    //   ],
    // ),
  ],
);
