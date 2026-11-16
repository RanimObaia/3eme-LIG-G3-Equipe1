import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String message;

  DetailsScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message, size: 70, color: Colors.teal),
            SizedBox(height: 20),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: () {
                // Ferme Détails et Profil pour revenir directement à Accueil
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Retour à l\'Accueil'),
            ),
          ],
        ),
      ),
    );
  }
}