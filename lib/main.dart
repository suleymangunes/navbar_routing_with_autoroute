import 'package:flutter/material.dart';
import 'package:navbar_routing_with_autoroute/router/dependencies.dart';
import 'package:navbar_routing_with_autoroute/router/router.gr.dart';
import 'package:navbar_routing_with_autoroute/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencies();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = sl.get<AppRouter>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: getTheme(),
      darkTheme: getDarkTheme(),
    );
  }
}
