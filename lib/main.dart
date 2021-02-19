import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:naturesave/core/constans/app/app_constants.dart';
import 'package:naturesave/core/init/lang/lang_management.dart';

void main() => runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstans.LAN_ASSET_PATH));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
