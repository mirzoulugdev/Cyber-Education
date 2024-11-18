import 'package:cyber_education/Screen/cyber_security_page.dart';
import 'package:cyber_education/Screen/notification_page.dart';
import 'package:cyber_education/Screen/sertification_page.dart';
import 'package:cyber_education/Screen/settings_page.dart';
import 'package:cyber_education/Screen/starting_page.dart';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.white,
            accountName: const Text("James"),
            accountEmail: const Text(
              "mirjames07@gmail.com",
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/rog.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/back.jpg",
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(CyberSecurityPage.routeName);
            },
            child: const ListTile(
              leading: Icon(Icons.play_lesson_outlined),
              title: Text("KiberXavfsizlik"),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.play_lesson_outlined),
            title: Text("Til Kurslari"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(StartingPage.routeName);
            },
            child: const ListTile(
              leading: Icon(Icons.play_lesson_outlined),
              title: Text("Dasturlash kurslari"),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(SertificationPage.routeName),
            child: const ListTile(
              leading: Icon(Icons.edit_document),
              title: Text("Sertifikatlar"),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.supervisor_account),
            title: Text("Xizmatlarimiz"),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(NotificationPage.routeName),
            child: const ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text("Bildirishnomalar"),
            ),
          ),
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(SettingsPage.routeName),
            child: const ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text("Settings"),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("LogOut"),
          ),
        ],
      ),
    );
  }
}
