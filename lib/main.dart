import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'PR'), // Spanish, no country code
      ],
      // home: HomePage()
      initialRoute: '/',
      routes: getAplicatioRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta Llamada ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AletrPage());
      },
    );
  }
}
