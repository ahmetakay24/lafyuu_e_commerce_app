import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce_app/theme/app_theme.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key, required this.appTheme});

  final AppTheme appTheme;

  //Custom appbar eklenicek

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Row(
          children: [],
        ),
      ),
      body: ListView(),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ]),
    );
  }
}
