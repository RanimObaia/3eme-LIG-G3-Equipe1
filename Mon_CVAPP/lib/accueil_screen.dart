import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'main.dart';

class AccueilScreen extends StatelessWidget {
  Widget _bouton(
      BuildContext context,
      String texte,
      IconData icone,
      String route,
      ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          icon: Icon(icone),
          label: Text(texte),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My CV')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                photoProfil,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
                // Affiche une icône tant que la photo n'est pas ajoutée
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 140,
                    height: 140,
                    color: couleurPrincipale,
                    child: Icon(Icons.person, size: 80, color: Colors.white),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              nomComplet,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: couleurPrincipale,
              ),
            ),
            SizedBox(height: 4),
            Text(
              titreCv,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: couleurAccent),
            ),
            SizedBox(height: 16),
            Text(
              presentation,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 28),
            _bouton(context, 'Education', Icons.school, '/formation'),
            _bouton(context, 'Experience', Icons.work, '/experience'),
            _bouton(context, 'Projects', Icons.code, '/projets'),
            _bouton(context, 'Skills', Icons.star, '/competences'),
            _bouton(context, 'Contact', Icons.mail, '/contact'),
          ],
        ),
      ),
    );
  }
}