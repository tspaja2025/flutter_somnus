import 'package:flutter_somnus/screens/dashboard.dart';
import 'package:flutter_somnus/screens/profile.dart';
import 'package:flutter_somnus/screens/track.dart';
import 'package:flutter_somnus/screens/trends.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Dashboard()),
    GoRoute(path: '/track', builder: (context, state) => const Track()),
    GoRoute(path: '/trends', builder: (context, state) => const Trends()),
    GoRoute(path: '/profile', builder: (context, state) => const Profile()),
  ],
);
