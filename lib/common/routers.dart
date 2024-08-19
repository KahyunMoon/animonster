import 'package:animonster/presentation/pages/home/home_page.dart';
import 'package:animonster/presentation/pages/logIn/login_page.dart';
import 'package:animonster/presentation/pages/splash/splash.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      name: 'splash',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: Splash(),
      ),
    ),
    GoRoute(
      path: '/logIn',
      name: 'logIn',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: LogInPage(),
      ),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomePage(),
      ),
    ),
  ],
);
      
     
      // GoRoute(
      //   path: '/deleteUserPage',
      //   name: 'deleteUserPage',
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: DeleteUserPage(),
      //   ),
      // ),
      // GoRoute(
      //     path: '/terms/:index',
      //     name: 'terms',
      //     pageBuilder: (context, state) {
      //       final pathParams = state.pathParameters;
      //       final termIndex = pathParams['index'] ?? '0';
      //       return MaterialPage(child: TermsPage(index: int.parse(termIndex)));
      //     }),
      // GoRoute(
      //   path: '/addCalendar',
      //   name: 'addCalendar',
      //   pageBuilder: (context, state) => const NoTransitionPage(
      //     child: AddCalendarPage(),
      //   ),
      // ),
      // GoRoute(
      //     path: '/tapCalendar/:id',
      //     name: 'tapCalendar',
      //     pageBuilder: (context, state) {
      //       final pathParams = state.pathParameters;
      //       final id = pathParams['id'] ?? 0;
      //       return NoTransitionPage(
      //         child: TapCalendarPage(
      //           id: int.parse(id.toString()),
      //         ),
      //       );
      //     }),
      // GoRoute(
      //     path: '/communitydetail/:dataName/:id/:reg_date',
      //     name: 'communityDetail',
      //     pageBuilder: (context, state) {
      //       final pathParams = state.pathParameters;
      //       final id = pathParams['id'] ?? 0;
      //       final data = pathParams['dataName'] ?? '';
      //       final timeData = pathParams['reg_date'] ?? '';

      //       return NoTransitionPage(
      //         child: CommunityDetail(
      //             id: int.parse(id.toString()) - 1,
      //             dataName: data,
      //             timedata: timeData),
      //       );
      //     }),
      // GoRoute(
      //     path: '/sharingdetail/:id',
      //     name: 'sharingDetail',
      //     pageBuilder: (context, state) {
      //       final pathParams = state.pathParameters;
      //       final id = pathParams['id'] ?? 0;

      //       return NoTransitionPage(
      //         child: SharingDetail(
      //           id: int.parse(id.toString()),
      //           data: Constants.likePetData,
      //         ),
      //       );
      //     }),
      // ShellRoute(
      //   pageBuilder: (context, state, child) =>
      //       NoTransitionPage(child: ShellPage(child: child)),
      //   routes: [
      //     GoRoute(
      //       path: '/',
      //       name: 'home',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: HomePage(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/community',
      //       name: 'community',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: CommunityPage(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/sharing',
      //       name: 'sharing',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: SharingPage(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/record',
      //       name: 'record',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: RecordPage(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/my',
      //       name: 'my',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: MyPage(),
      //       ),
      //     ),
      //     GoRoute(
      //       path: '/search',
      //       name: 'search',
      //       pageBuilder: (context, state) {
      //         final query = state.extra as String;

      //         return NoTransitionPage(
      //           child: SearchPage(
      //             query: query,
      //           ),
      //         );
      //       },
      //     ),
      //     GoRoute(
      //       path: '/post',
      //       name: 'post',
      //       pageBuilder: (context, state) => const NoTransitionPage(
      //         child: PostPage(),
      //       ),
      //     ),
      //   ],

