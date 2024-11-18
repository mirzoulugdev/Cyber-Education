import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/main_drawer.dart';
import '../Screen/notification_page.dart';
import '../widgets/recommend_course.dart';
import '../widgets/starting_course_page.dart';

class StartingPage extends StatelessWidget {
  static const routeName = 'starting';

  const StartingPage({
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
          tabs: [
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
        title: Text(
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
              SizedBox(
                height: 15,
              ),
              Text(
                "Dasturlash Kurslari",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade200,
                ),
              ),
              SizedBox(
                height: 400,
                child: StartingCoursePage(),
              ),

              //Tavsiya etiladigan kurslar
              Text(
                "Tavsiya etiladigan kurslar",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade200,
                ),
              ),
              SizedBox(
                height: 420,
                child: RecommendCourse(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
