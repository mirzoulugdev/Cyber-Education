import 'package:cyber_education/Screen/login_page.dart';
import 'package:cyber_education/Screen/second_teaching_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeachingPage extends StatelessWidget {
  const TeachingPage({super.key});

  static const routename = 'teaching-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.indigo,
              Colors.green.shade700,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Image.asset(
                'assets/images/teaching.png',
                width: 450,
                height: 300,
              ),
              SizedBox(height: 20),
              //bold text
              const Text(
                "Yangi ko'nikmalarni",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
              const Text(
                "o'rganishni boshlang",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              //small text
              SizedBox(height: 15),
              const Text(
                "Ilova orqali turli xil kurslarni",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                "o'rganishni boshlang.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              // row: ElevatedButton and TextButton
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(SecondTeachingPage.routeName);
                    },
                    child: const Text(
                      "Keyingisi",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(35, 36, 38, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
