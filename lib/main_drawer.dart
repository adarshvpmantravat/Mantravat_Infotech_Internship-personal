import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_demo_app/welcomepage.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://d3nn873nee648n.cloudfront.net/900x600/19844/300-SM968610.jpg',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  const Text(
                    'Adarsh V Patil',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Text(
                    'adarshvp*****@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Exit',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
