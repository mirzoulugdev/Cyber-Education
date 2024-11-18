import 'package:cyber_education/models/select_course.dart';
import 'package:flutter/material.dart';

class SelectCourses with ChangeNotifier {
  List<SelectCourse> _select = [
    SelectCourse(
      id: 's1',
      title: "Dasturlash Kurslari",
      imageUrl: "assets/images/coding.jpg",
    ),
    SelectCourse(
      id: 's2',
      title: "KiberXavfsizlik kurslari",
      imageUrl: "assets/images/cyber.jpg",
    ),
  ];

  List<SelectCourse> get select {
    return [..._select];
  }
}
