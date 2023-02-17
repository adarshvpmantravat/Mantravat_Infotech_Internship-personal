import 'package:my_demo_app/main_drawer.dart';
import 'package:flutter/material.dart';

class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({super.key});

  @override
  State<MyWelcomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Welcome to Mantravat Infotech',
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
