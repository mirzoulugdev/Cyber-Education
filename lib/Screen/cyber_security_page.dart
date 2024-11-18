import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Screen/notification_page.dart';
import '../widgets/cyber_security.dart';
import '../widgets/main_drawer.dart';

class CyberSecurityPage extends StatelessWidget {
  static const routeName = 'cyber';

  const CyberSecurityPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: GNav(
          backgroundColor: Colors.indigo.shade500,
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.white,
          padding: const EdgeInsets.all(20),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.book,
              text: 'eBooks',
            ),
            GButton(
              icon: Icons.play_lesson_outlined,
              text: 'Lesson',
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Account',
            ),
          ],
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo.shade500,
        foregroundColor: Colors.white,
        title: const Text(
          "Xush Kelibsiz!",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(NotificationPage.routeName),
              icon: Image.asset(
                "assets/images/notification.png",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade300,
              Colors.indigo.shade300,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "KiberXavfsizlik Kurslari",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade200,
                ),
              ),
              const SizedBox(
                height: 450,
                child: CyberSecurity(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
