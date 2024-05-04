import 'package:flutter/material.dart';
import 'package:music_playlist/infrastructure/dark_mode.dart';

import 'infrastructure/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Fortune Fun Teller',
      theme: theme,
      routes: appRoutes,
      initialRoute: AppRoutes.splash,
    );
  }
}
