import 'package:flutter/material.dart';

import 'accueil_screen.dart';
import 'details_screen.dart';
import 'profil_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercice navigation',
      debugShowCheckedModeBanner: false,
      // Design simple, appliqué à tous les écrans
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.teal[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AccueilScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/profil') {
          final args = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => ProfilScreen(
              nom: args['nom']!,
              niveau: args['niveau']!,
            ),
          );
        }

        if (settings.name == '/details') {
          final message = settings.arguments as String;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetailsScreen(message: message),
          );
        }

        return null;
      },
    );
  }
}