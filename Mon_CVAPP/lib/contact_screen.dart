import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'main.dart';

class ContactScreen extends StatelessWidget {
  Widget _ligne(IconData icone, String texte) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icone, color: couleurAccent),
        title: Text(texte),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _ligne(Icons.mail, email),
          _ligne(Icons.phone, telephone),
          _ligne(Icons.location_on, ville),
          _ligne(Icons.link, lienProfil),
        ],
      ),
    );
  }
}