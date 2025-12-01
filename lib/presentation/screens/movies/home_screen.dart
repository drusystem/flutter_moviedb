import 'package:flutter/material.dart';
import 'package:flutter_cinema_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final Widget childview;
  const HomeScreen({super.key, required this.childview});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: childview,
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
