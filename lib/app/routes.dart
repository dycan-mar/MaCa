import 'package:go_router/go_router.dart';
import '../screens/home.dart';
import '../screens/belajar_aksara.dart';
import '../screens/coming_soon.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/jilid/:nomor',
      builder: (context, state) {
        final nomor = int.parse(state.pathParameters['nomor']!);
        // Redirect ke coming soon jika data tidak ada
        if (nomor > 3) {
          return ComingSoonScreen(nomorJilid: nomor);
        }
        final halamanAwal = int.tryParse(
          state.uri.queryParameters['bookmark'] ?? '',
        );
        return BelajarAksaraScreen(nomorJilid: nomor, halamanAwal: halamanAwal);
      },
    ),
  ],
);
