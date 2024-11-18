import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cyber_education/providers/courses.dart';

class StartingCoursePage extends StatelessWidget {
  const StartingCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final courseData = Provider.of<Courses>(context);
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
                Colors.blue.shade800,
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
                height: 10,
              ),
              Text(
                "${course.name} dasturlash",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
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
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.green,
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
