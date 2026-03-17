import 'package:flutter/material.dart';
import 'LasPaginas/home_page.dart';
import 'LasPaginas/tratamientos.dart';
import 'LasPaginas/resenas.dart';
import 'LasPaginas/agenda.dart';
import 'LasPaginas/especialistas.dart';

void main() => runApp(const GreatSmileApp());

class GreatSmileApp extends StatelessWidget {
  const GreatSmileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Smile Clinic',
      theme: ThemeData(
        // Paleta de colores limpia y profesional (Teal/Cian)
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF0F9FA), // Fondo muy claro
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF00ACC1), // Barra superior Cyan
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tratamientos': (context) => const TratamientosPage(),
        '/resenas': (context) => const ResenasPage(),
        '/cita': (context) => const AgendaPage(),
        '/especialistas': (context) => const EspecialistasPage(),
      },
    );
  }
}