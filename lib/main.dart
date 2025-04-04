import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/jefes.dart';
import 'screens/personajes.dart';
import 'screens/armas.dart';
import 'screens/locaciones.dart';
import 'screens/info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Diario del Cazador',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: Typography.whiteCupertino.copyWith(
          bodyLarge: const TextStyle(
            fontFamily: 'serif',
            fontSize: 20.0,
            color: Colors.white,
          ),
          bodyMedium: const TextStyle(
            fontFamily: 'serif',
            fontSize: 16.0,
            color: Colors.white,
          ),
          bodySmall: const TextStyle(
            fontFamily: 'serif',
            fontSize: 14.0,
            color: Colors.white,
          ),
          titleLarge: const TextStyle(
            fontFamily: 'serif',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            fontFamily: 'serif',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/jefes': (context) => const JefesScreen(),
        '/personajes': (context) => const PersonajesScreen(),
        '/armas': (context) => const ArmasScreen(),
        '/locaciones': (context) => const LocacionesScreen(),
        '/info': (context) => const InfoScreen(),
      },
    );
  }
}
