import 'package:flutter/material.dart';

import 'cv_data.dart';
import 'element_cv.dart';

class ProjetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          for (final projet in projets)
            ElementCv(icone: Icons.code, element: projet),
        ],
      ),
    );
  }
}