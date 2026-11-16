import 'dart:math';

import 'package:flutter/material.dart';

class InscriptionForm extends StatefulWidget() {
  @override
  _InscriptionFormState createState() => _InscriptionFormState();
}

class _InscriptionFormState extends State<InscriptionForm> {
  final _formKey = GlobalKey<FormState>();
  final _nomController = TextEditingController();
  final _emailController = TextEditingController();
}

@override
void dispose() {
  _nomController.dispose();
  _emailController.dispose();
  super.dispose();
}

void _submit(){
  if (_formKey.currentState!Validate()){
    final nom = _nomController.text ;
    final email = _emailController.text ;


    showDialog(
       context: context ,
       builder: (context) => AlertDialog(
         title: Text('Inscription réussie '),
         content: Text('Bienvenue $nom !\nEmail : $email' ),
         actions: [
           TextButton(
              onPressed:() => Navigator.pop(context),
              child: Text('Fermer'))
  ],
       ) )
  }
}