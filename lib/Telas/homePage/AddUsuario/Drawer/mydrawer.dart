import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pink[50],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
                accountName: Text('Usuario'),
                accountEmail: Text('usuario@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/Imagens/Userimage.png'),
                  radius: 100,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_sharp,
              ),
              title: const Text(
                'Perfil',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle_notifications,
              ),
              title: const Text(
                'Notificação',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event,
              ),
              title: const Text(
                'Semana',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
