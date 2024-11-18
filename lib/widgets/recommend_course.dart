import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cyber_education/providers/recommend_courses.dart';

class RecommendCourse extends StatelessWidget {
  const RecommendCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final courseData = Provider.of<RecommendCourses>(context);
    return ListView.builder(
      // itemCount: courseData.list.length,\
      itemCount: courseData.list.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(15),
      itemBuilder: (context, index) {
        final course = courseData.list[index];

        return Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.blue.shade200,
                Colors.blueAccent.shade400,
              ],
              focal: Alignment.center,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // COurse imgae
              Image.asset(
                width: 200,
                height: 200,
                course.imageUrl,
                fit: BoxFit.cover,
              ),

              //course name
              const SizedBox(
                height: 20,
              ),
              Text(
                "${course.name} ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange.shade700,
                              Colors.amber.shade900,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )),
                      child: const Text(
                        "Boshlash",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),

              // //Course price
              // Text(course.coursePrice.toStringAsFixed(0)),
            ],
          ),
        );
      },
    );
  }
}
