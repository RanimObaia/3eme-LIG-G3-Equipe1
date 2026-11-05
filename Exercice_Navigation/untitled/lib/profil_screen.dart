import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  final String nom;
  final String niveau;

  ProfilScreen({required this.nom, required this.niveau});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.teal,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Nom : $nom',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Niveau d\'étude : $niveau',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                // Envoie un message personnalisé à l'écran Détails
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: 'Bonjour $nom, tu es en $niveau !',
                );
              },
              child: Text('Aller aux Détails'),
            ),
          ],
        ),
      ),
    );
  }
}