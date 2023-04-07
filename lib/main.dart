import 'package:flutter/material.dart';
import 'package:my_demo_app/main_drawer.dart';
import 'package:my_demo_app/login.dart';
import 'package:my_demo_app/register.dart';
import 'package:my_demo_app/welcomepage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: FutureBuilder(
              future: _initialization,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('could not connected'),
                  );
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  return const MyLoginPage();
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
        ));
  }
}
