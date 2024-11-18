import 'package:cyber_education/Screen/login_page.dart';
import 'package:flutter/material.dart';

class SecondTeachingPage extends StatelessWidget {
  const SecondTeachingPage({super.key});

  static const routeName = 'second-page';

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
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image
              SizedBox(height: 60),
              Image.asset(
                "assets/images/secondPage.png",
                height: 200,
                width: 450,
              ),

              //Bold Text
              SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Darajangizni keyingi",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "bosqichga ko'taring",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  //Small text
                  SizedBox(height: 30),
                  Text(
                    "Yangi narsalarni o'rganing va",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "muammolarni hal qilish qobiliyatingizni",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "rivojlantiring.",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              //Row: ElevatedButton and TextButton
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(35, 36, 38, 1),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(7),
                      // ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                    child: const Text(
                      "Keyingisi",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 18,
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
