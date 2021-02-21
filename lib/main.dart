import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naturesave/core/constans/locator.dart';
import 'package:naturesave/models/account.dart';
import 'package:naturesave/ui/profile/profile_screen.dart';
import 'package:naturesave/ui/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'viewmodels/account_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Phoenix(
    child: MyApp(),
  ));
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
        debugShowCheckedModeBanner: false,
        title: 'NatureSave',
        home: ProfilScreen(),
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
