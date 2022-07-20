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
      path: StackScreenRoute,
      builder: (context, state) {
        return StackScreen(
          path: StackScreenRoute,
        );
      },
    ),
    GoRoute(
      path: ServicesScreenRoute,
      builder: (context, state) {
        return ServicesScreen(
          path: ServicesScreenRoute,
        );
      },
    ),
    GoRoute(
      path: SchoolScreenRoute,
      builder: (context, state) {
        return SchoolsScreen(
          path: SchoolScreenRoute,
        );
      },
    ),
    GoRoute(
      path: PartnershipScreenRoute,
      builder: (context, state) {
        return PartnershipScreen(
          path: PartnershipScreenRoute,
        );
      },
    ),
    GoRoute(
      path: CareerScreenRoute,
      builder: (context, state) {
        return CareerScreen(
          path: CareerScreenRoute,
        );
      },
    ),
    GoRoute(
      path: ContactsScreenRoute,
      builder: (context, state) {
        return ContactsScreen(
          path: ContactsScreenRoute,
        );
      },
    ),
  ],
  errorBuilder: (context, state) {
    return ErrorPage(error: state.error);
  },
);
