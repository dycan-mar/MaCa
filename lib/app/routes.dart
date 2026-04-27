import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/belajar_aksara.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/jilid/:nomor',
      builder: (context, state) {
        final nomor = int.parse(state.pathParameters['nomor']!);
        return BelajarAksaraScreen(nomorJilid: nomor,);
      },
    ),
  ],
);
