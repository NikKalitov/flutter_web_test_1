// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'routes.dart';
import './screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: MainScreenRoute,
      builder: (context, state) {
        return MainScreen(path: MainScreenRoute);
      },
    ),
    GoRoute(
      path: ProjectsScreenRoute,
      builder: (context, state) {
        return StackScreen(
          path: ProjectsScreenRoute,
        );
      },
    ),
    GoRoute(
      path: TeamsScreenRoute,
      builder: (context, state) {
        return ServicesScreen(
          path: TeamsScreenRoute,
        );
      },
    ),
    GoRoute(
      path: InterviewScreenRoute,
      builder: (context, state) {
        return SchoolsScreen(
          path: InterviewScreenRoute,
        );
      },
    ),
    GoRoute(
      path: UsersScreenRoute,
      builder: (context, state) {
        return PartnershipScreen(
          path: UsersScreenRoute,
        );
      },
    ),
    GoRoute(
      path: DataScreenRoute,
      builder: (context, state) {
        return CareerScreen(
          path: DataScreenRoute,
        );
      },
    ),
  ],
  errorBuilder: (context, state) {
    return ErrorPage(error: state.error);
  },
);
