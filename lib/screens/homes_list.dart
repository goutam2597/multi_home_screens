import 'package:flutter/material.dart';
import 'home1.dart';
import 'home2.dart';

class HomesListScreen extends StatelessWidget {
  const HomesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Demos'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildHomeCard(
            context,
            'Home 1 - Furniture Store',
            'MIKASA furniture e-commerce design',
            Colors.orange,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home1Screen()),
            ),
          ),
          const SizedBox(height: 16),
          _buildHomeCard(
            context,
            'Home 2 - Fashion Store',
            'E-commerce app with categories and products',
            Colors.blue,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home2Screen()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeCard(
    BuildContext context,
    String title,
    String description,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.home, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: color, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
