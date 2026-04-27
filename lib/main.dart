import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'app/theme.dart';
import 'app/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ← tambah ini
  usePathUrlStrategy();
  runApp(const IqraHanacakaApp());
}

class IqraHanacakaApp extends StatelessWidget {
  const IqraHanacakaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Iqra' Hanacaraka",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: appRouter,
    );
  }
}
