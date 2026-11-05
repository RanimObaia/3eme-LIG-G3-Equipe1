import 'package:flutter/material.dart';

import 'accueil_screen.dart';
import 'competences_screen.dart';
import 'contact_screen.dart';
import 'experience_screen.dart';
import 'formation_screen.dart';
import 'projets_screen.dart';

// Couleurs du style personnalisé
const Color couleurPrincipale = Color(0xFF1F3A5F);
const Color couleurAccent = Color(0xFFE07A5F);
const Color couleurFond = Color(0xFFF5F1E8);

void main() {
  runApp(MonCvApp());
}

class MonCvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon_CVAPP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: couleurPrincipale),
        scaffoldBackgroundColor: couleurFond,
        appBarTheme: AppBarTheme(
          backgroundColor: couleurPrincipale,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: couleurAccent,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AccueilScreen(),
        '/formation': (context) => FormationScreen(),
        '/experience': (context) => ExperienceScreen(),
        '/projets': (context) => ProjetsScreen(),
        '/competences': (context) => CompetencesScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}