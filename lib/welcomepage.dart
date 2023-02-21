import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:my_demo_app/main_drawer.dart';
import 'package:flutter/material.dart';

class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({super.key});

  @override
  State<MyWelcomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWelcomePage> {
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(
        //   Icons.account_circle_rounded,
        // ),
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
          _image != null
              ? Image.file(
                  _image!,
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                )
              : const Image(
                  image: AssetImage(
                  'assets/Wall-e image picker.jpg',
                )),
          customButton(
              title: 'Pick from Gallery',
              icon: Icons.image_outlined,
              onClick: () => getImage(ImageSource.gallery)),
          customButton(
              title: 'Open Camera',
              icon: Icons.camera_alt_rounded,
              onClick: () => getImage(ImageSource.camera))
        ],
      )),
    );
  }
}

Widget customButton(
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
