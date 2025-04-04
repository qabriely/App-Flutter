import 'package:flutter/material.dart';

class LocacionesScreen extends StatelessWidget {
  const LocacionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Locaciones')),
      body: const Center(child: Text('Aquí sobre las Locaciones')),
    );
  }
}
