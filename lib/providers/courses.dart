import 'package:flutter/material.dart';

import '../models/course.dart';

class Courses with ChangeNotifier {
  List<Course> _list = [
    Course(
      id: "c1",
      name: "Flutter",
      imageUrl: "assets/images/flutter.png",
      description: "Ajoyib Flutter kursi",
      coursePrice: 300.0,
    ),
    Course(
      id: "c2",
      name: "Backend",
      imageUrl: "assets/images/python.png",
      description: "Ajoyib Python kursi",
      coursePrice: 300.0,
    ),
    Course(
      id: "c3",
      name: "Mobil",
      imageUrl: "assets/images/java.png",
      description: "Ajoyib Backend kursi",
      coursePrice: 300.0,
    ),
    Course(
      id: "c4",
      name: "Frontend",
      imageUrl: "assets/images/javascript.png",
      description: "Ajoyib Backend kursi",
      coursePrice: 300.0,
    ),
  ];

  List<Course> get list {
    return [..._list];
  }

  void addToCourse(Course item) {
    _list.add(item);
    notifyListeners();
  }
}
