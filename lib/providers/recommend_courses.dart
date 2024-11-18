import 'package:cyber_education/models/recommend_course_model.dart';
import 'package:flutter/material.dart';

class RecommendCourses with ChangeNotifier {
  List<RecommendCourseModel> _recommend = [
    RecommendCourseModel(
      id: 'r1',
      name: "Project Management",
      imageUrl: "assets/images/project.png",
      description: "Ajoyib Project Management Kursi",
      coursePrice: 150.0,
    ),
    RecommendCourseModel(
      id: 'r2',
      name: "QA - Tester",
      imageUrl: "assets/images/qa.png",
      description: "Ajoyib Project Management Kursi",
      coursePrice: 180.0,
    ),
    RecommendCourseModel(
      id: 'r3',
      name: "Sun'iy Intellekt",
      imageUrl: "assets/images/ai.png",
      description: "Ajoyib Project Management Kursi",
      coursePrice: 200.0,
    ),
    RecommendCourseModel(
      id: 'r4',
      name: "No-Code",
      imageUrl: "assets/images/no_code.png",
      description: "Ajoyib Project Management Kursi",
      coursePrice: 80.0,
    )
  ];
  List<RecommendCourseModel> get list {
    return [..._recommend];
  }
}
