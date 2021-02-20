import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'ui/root_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(Phoenix(
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: RootScreen(),
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: const Color(0xFF1ad760),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: const Color(0xFF1ad760),
          unselectedLabelColor: const Color(0xFF2d46b9),
        ),
      ),
    );
  }
}
