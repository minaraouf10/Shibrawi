import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shibrawi/core/config/router/router_imports.dart';
import 'package:shibrawi/core/data/locale/pref.dart';
import 'package:shibrawi/core/data/locale/routing_pref.dart';
import 'package:shibrawi/generated/translations.g.dart';

final globalRef = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(
    // DevicePreview(
    // enabled: true,
    //   tools: const [
    //    ...DevicePreview.defaultTools,
    //  ],
    // builder: (context) =>
    TranslationProvider(
        child: UncontrolledProviderScope(
      container: globalRef,
      child: const MyApp(),
    )),
    //),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      initialRoute: RoutingPrefs.initial,
    );
  }
}
