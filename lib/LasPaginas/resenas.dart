import 'package:flutter/material.dart';

class ResenasPage extends StatelessWidget {
  const ResenasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reseñas de Pacientes')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen de paciente feliz desde la red
              ClipRRect(
                borderRadius: BorderRadius.circular(100), // Circular
                child: Image.network(
                  'https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/tratamientos.avif',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              const Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '⭐⭐⭐⭐⭐\n"La mejor experiencia dental que he tenido. El Dr. [Tu Nombre] es muy paciente y profesional."',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                child: const Text('Volver al Inicio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}