import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'element_cv.dart';
import 'main.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experience')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          for (final experience in experiences)
            ElementCv(icone: Icons.work, element: experience),
          SizedBox(height: 12),
          Text(
            'Volunteering',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: couleurPrincipale,
            ),
          ),
          SizedBox(height: 12),
          for (final element in benevolat)
            ElementCv(icone: Icons.volunteer_activism, element: element),
        ],
      ),
    );
  }
}