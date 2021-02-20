<<<<<<< HEAD
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
=======
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:naturesave/core/constans/app/app_constants.dart';
import 'package:naturesave/core/init/lang/lang_management.dart';

void main() => runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstans.LAN_ASSET_PATH));
>>>>>>> a004349aa69f535a1706d9d98bca796dd2ecf8ff

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: RootScreen(),
    );
  }
}
