import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF00838F)),
            accountName: Text('Great Smile Clinic', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('Av. Dental 123 • Tel: 555-0123'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/gioser0579/foto-examen/refs/heads/main/logo3.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.clean_hands, color: Colors.cyan),
            title: const Text('Tratamientos'),
            onTap: () => Navigator.pushReplacementNamed(context, '/tratamientos'),
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.amber),
            title: const Text('Reseñas'),
            onTap: () => Navigator.pushReplacementNamed(context, '/resenas'),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.green),
            title: const Text('Agendar Cita'),
            onTap: () => Navigator.pushReplacementNamed(context, '/cita'),
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.blue),
            title: const Text('Especialistas'),
            onTap: () => Navigator.pushReplacementNamed(context, '/especialistas'),
          ),
        ],
      ),
    );
  }
}