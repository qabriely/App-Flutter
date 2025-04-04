import 'package:flutter/material.dart';

class PersonajesScreen extends StatelessWidget {
  const PersonajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personajes')),
      body: const Center(child: Text('Aquí va a ir sobre los Personajes')),
    );
  }
}
