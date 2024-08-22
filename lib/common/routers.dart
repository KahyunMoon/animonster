import 'package:animonster/presentation/pages/home/home_page.dart';

import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomePage(),
      ),
    ),
  ],
);
