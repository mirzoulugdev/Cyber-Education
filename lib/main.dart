import 'package:cyber_education/Screen/selecting_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Screen/logo_screen.dart';
import '../Screen/second_teaching_page.dart';
import '../Screen/teaching_page.dart';
import '../Screen/login_page.dart';
import '../Screen/register_page.dart';
import '../Screen/starting_page.dart';
import '../Screen/notification_page.dart';
import '../Screen/sertification_page.dart';
import '../Screen/settings_page.dart';
import '../Screen/course_details_screen.dart';
import '../Screen/cyber_security_page.dart';
import '../providers/courses.dart';
import '../providers/cyber_courses.dart';
import '../providers/recommend_courses.dart';
import '../providers/select_courses.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Courses>(
          create: (context) => Courses(),
        ),
        ChangeNotifierProvider<RecommendCourses>(
          create: (context) => RecommendCourses(),
        ),
        ChangeNotifierProvider<SelectCourses>(
          create: (context) => SelectCourses(),
        ),
        ChangeNotifierProvider<CyberCourses>(
          create: (ctx) => CyberCourses(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: LogoScreen(),
        routes: {
          TeachingPage.routename: (ctx) => TeachingPage(),
          SecondTeachingPage.routeName: (ctx) => SecondTeachingPage(),
          LogoScreen.routeName: (ctx) => LogoScreen(),
          LoginPage.routeName: (ctx) => LoginPage(),
          RegisterPage.routeName: (ctx) => RegisterPage(),
          StartingPage.routeName: (ctx) => StartingPage(),
          NotificationPage.routeName: (ctx) => NotificationPage(),
          SertificationPage.routeName: (ctx) => SertificationPage(),
          SettingsPage.routeName: (ctx) => SettingsPage(),
          CyberSecurityPage.routeName: (ctx) => CyberSecurityPage(),
          CourseDetailsScreen.routeName: (ctx) => CourseDetailsScreen(),
          SelectingScreen.routeName: (ctx) => SelectingScreen(),
        },
      ),
    );
  }
}
