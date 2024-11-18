import 'package:cyber_education/Screen/course_details_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cyber_education/providers/cyber_courses.dart';

class CyberSecurity extends StatelessWidget {
  const CyberSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    final courseData = Provider.of<CyberCourses>(context);

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
                Colors.grey.shade300,
                Color.fromRGBO(66, 125, 157, 100),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  width: 200,
                  height: 200,
                  course.imageUrl,
                  fit: BoxFit.cover,
                ),
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
                height: 15,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        CourseDetailsScreen.routeName,
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 35,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.amber,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
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
                    icon: Icon(
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
