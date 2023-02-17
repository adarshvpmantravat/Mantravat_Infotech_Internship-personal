import 'package:flutter/material.dart';
import 'package:my_demo_app/main_drawer.dart';
import 'package:my_demo_app/login.dart';
import 'package:my_demo_app/register.dart';
import 'package:my_demo_app/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLoginPage(),
        'register': (context) => const MyRegisterPage(),
        'welcomepage': (context) => const MyWelcomePage()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'Welcome to Mantravat Infotech',
            style: TextStyle(fontSize: 25),
          ),
        ),
        drawer: const MainDrawer(),
        body: Center(
          // child:  Container(
          //   child:  Text('Body'),
          //   color: Colors.blue,
          //   padding: EdgeInsets.all(25),
          child: TextButton(
            child: const Text('Click Here to Login'),
            onPressed: () {
              // Navigator.pushNamed(context, 'login');
            },
            onLongPress: () {},
          ),
        ),
      ),
    ),
  );
}
