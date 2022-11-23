import 'package:flutter/material.dart';
import 'package:zinea/presentation/screens/main/widgets/bottom_navigation_widget.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Scaffold(),
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
