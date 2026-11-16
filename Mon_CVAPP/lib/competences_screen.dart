import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'main.dart';

class CompetencesScreen extends StatelessWidget {
  Widget _titre(String texte) {
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 10),
      child: Text(
        texte,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: couleurPrincipale,
        ),
      ),
    );
  }

  Widget _liste(List<String> elements) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final element in elements)
          Chip(
            label: Text(element),
            backgroundColor: Colors.white,
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skills')),
      body: ListView(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          for (final categorie in competences.entries) ...[
            _titre(categorie.key),
            _liste(categorie.value),
          ],
          _titre('Languages'),
          _liste(langues),
        ],
      ),
    );
  }
}