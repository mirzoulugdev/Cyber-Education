import 'package:cyber_education/Screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final dataController = TextEditingController();

  static const routeName = 'register-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
              //Ro'yhatdan o'tish text
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Ro'yxatdan o'tish",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    inherit: false,
                  ),
                ),
              ),

              //Foydalanuchi nomi
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  border: const OutlineInputBorder(),
                  prefixIcon: Image.asset("assets/images/username.png"),
                  labelText: "Foydalanuvchi nomi",
                  labelStyle: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),

              //email
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  prefixIcon: Image.asset("assets/images/email.png"),
                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),

              //tug'ilgan yili
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  prefixIcon: Image.asset("assets/images/calender.png"),
                  border: const OutlineInputBorder(),
                  labelText: "Tug'ilgan yili",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),

              //yoshi
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  prefixIcon: Image.asset("assets/images/age.png"),
                  border: const OutlineInputBorder(),
                  labelText: "Yoshi",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),

              //ta'lim holati
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  prefixIcon: Image.asset("assets/images/education.png"),
                  border: const OutlineInputBorder(),
                  labelText: "Ta'lim holati",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),

              //parol
              const SizedBox(height: 15),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  prefixIcon: Image.asset("assets/images/lock.png"),
                  border: const OutlineInputBorder(),
                  labelText: "Parol",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),

              //Row HIsobingiz yo'qmi:text and Tizimga kirish: TextButton
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Hisobingiz bormi?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                    child: const Text(
                      "Tizimga kirish",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),

              //ELevatedButton: Ro'yhatdan o'tish
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(LoginPage.routeName),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Ro'yxatdan o'tish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
