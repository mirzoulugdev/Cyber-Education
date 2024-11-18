import 'package:cyber_education/providers/cyber_courses.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({
    super.key,
  });

  static const routeName = 'cyberSecurity';

  @override
  Widget build(BuildContext context) {
    final details = Provider.of<CyberCourses>(context);

    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (contet, index) {
          final courseDetails = details.list[index];

          return Container(
            height: 750,
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  //Row  IconButton course appbar
                  // Row(
                  //   children: [
                  //     IconButton(
                  //       onPressed: () {},
                  //       icon: const Icon(
                  //         Icons.arrow_back,
                  //       ),
                  //     ),
                  //     Container(
                  //       alignment: Alignment.center,
                  //       child: Text(
                  //         courseDetails.name,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // course image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(courseDetails.imageUrl),
                  ),

                  //course title
                  Text(
                    courseDetails.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //course description
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          courseDetails.description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Mentor: Ulug'bek Mo'minov",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Course price,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        courseDetails.coursePrice.toString(),
                        style: const TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Row Course davomiyligi
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kurs Davomiyligi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "1h 32min",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //coursee button
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Video darslarni ko'rish",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
