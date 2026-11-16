import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'main.dart';

// Carte réutilisée par les écrans Education, Experience et Projects
class ElementCv extends StatelessWidget {
  final IconData icone;
  final ElementData element;

  ElementCv({required this.icone, required this.element});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icone, color: couleurAccent),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    element.titre,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: couleurPrincipale,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(element.lieu),
                  if (element.periode.isNotEmpty)
                    Text(
                      element.periode,
                      style: TextStyle(color: Colors.black54),
                    ),
                  for (final detail in element.details)
                    Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text('• $detail'),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}