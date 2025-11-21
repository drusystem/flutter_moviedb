import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home_max),label: 'Inicio'),
        const BottomNavigationBarItem(icon: Icon(Icons.label_outline),label: 'Categorias'),
        const BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),label: 'Favoritos'),
      ]
    );
  }
}