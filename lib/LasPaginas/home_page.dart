import 'package:flutter/material.dart';
import 'widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Great Smile Clinic')),
      drawer: const CustomDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. IMAGEN (Logo de muela redondo)
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
                  ],
                ),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/logo3.png'),
                ),
              ),
              const SizedBox(height: 40),
              
              // 2. NOMBRE ("Gioser Fisher")
              const Text(
                'Gioser Fisher',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF006064), // Teal oscuro
                ),
              ),
              const SizedBox(height: 15),
              
              // 3. DESCRIPCIÓN
              const Text(
                'Especialista en crear sonrisas perfectas con la tecnología más avanzada y atención personalizada.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  height: 1.4, // Interlineado para mejor lectura
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}