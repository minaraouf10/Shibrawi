import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/router/route_names.dart';
import 'package:shibrawi/core/config/router/router_imports.dart';
import 'package:shibrawi/core/data/locale/pref.dart';
import 'package:shibrawi/generated/translations.g.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.init();
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) =>
          TranslationProvider(child: const ProviderScope(child: MyApp())),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      supportedLocales: LocaleSettings.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: RouteNames.firstScreen,
      //home: BoardingScreen(),
    );
  }
}