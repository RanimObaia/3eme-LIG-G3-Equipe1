import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'element_cv.dart';

class FormationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Education')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          for (final formation in formations)
            ElementCv(icone: Icons.school, element: formation),
        ],
      ),
    );
  }
}