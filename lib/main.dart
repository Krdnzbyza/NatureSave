import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:naturesave/ui/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'ui/root_screen.dart';
import 'viewmodels/account_provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AccountProvider>(
          create: (context) => AccountProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: WelcomeScreen(),
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            color: const Color(0xFF1ad760),
          ),
          tabBarTheme: TabBarTheme(
            labelColor: const Color(0xFF1ad760),
            unselectedLabelColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
