import 'package:flutter/material.dart';
import 'package:starter/application/routes/router.dart';
import 'package:starter/data/injection/injector.dart';
import 'package:starter/presentation/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router.config(),
      themeMode: ThemeMode.system,
      theme: lightThemeData,
      darkTheme: darkThemeData,
    );
  }
}
