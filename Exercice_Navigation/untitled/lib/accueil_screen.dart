import 'package:flutter/material.dart';

class AccueilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 80, color: Colors.teal),
            SizedBox(height: 16),
            Text(
              'Bienvenue',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                // Envoie le nom et le niveau à l'écran Profil
                Navigator.pushNamed(
                  context,
                  '/profil',
                  arguments: {
                    'nom': 'Ahmed Ben Ali',
                    'niveau': 'Licence 2',
                  },
                );
              },
              child: Text('Aller au Profil'),
            ),
          ],
        ),
      ),
    );
  }
}