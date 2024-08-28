import 'package:accounts_app/screens/home/home.dart';
import 'package:accounts_app/screens/user_details/user_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:accounts_repository/accounts_repository.dart';

class AppRouter {
  final router = GoRouter(routes: [
    GoRoute(
      name: 'Home',
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomePage());
      },
    ),
    GoRoute(
      name: 'User Details',
      path: '/',
      pageBuilder: (context, state) {
        final user = state.extra as UserAccount;
        return MaterialPage(child: UserDetailPage(user));
      },
    )
  ]);
}
