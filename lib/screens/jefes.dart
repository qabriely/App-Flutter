import 'package:flutter/material.dart';

class JefesScreen extends StatelessWidget {
  const JefesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jefes')),
      body: const Center(
        child: Text('Aquí va a ir el contenido sobre los Jefes'),
      ),
    );
  }
}
