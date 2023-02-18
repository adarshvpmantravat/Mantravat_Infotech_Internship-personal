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
      body: Center(
          child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(25)),
          const Image(
              image: AssetImage(
            'assets/Wall-e image picker.jpg',
          )),
          CustomButton(
              title: 'Pick from Gallery',
              icon: Icons.image_outlined,
              onClick: () => {}),
          CustomButton(
              title: 'Open Camera',
              icon: Icons.camera_alt_rounded,
              onClick: () => {})
        ],
      )),
    );
  }
}

Widget CustomButton(
    {required String title,
    required IconData icon,
    required VoidCallback onClick}) {
  return Container(
    width: 200,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(children: [
        Icon(icon),
        const SizedBox(
          width: 20,
        ),
        Text(title)
      ]),
    ),
  );
}
