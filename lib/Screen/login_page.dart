import 'package:cyber_education/Screen/register_page.dart';
import 'package:cyber_education/Screen/selecting_screen.dart';

import 'package:flutter/material.dart';

import '../widgets/google_button.dart';
import '../widgets/facebook_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const routeName = 'login-page';

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
          padding: const EdgeInsets.all(25),
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(height: 60),
                const GoogleButton(),
                const SizedBox(height: 30),
                const FacebookButton(),

                // divider
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 2,
                      width: 140,
                      color: const Color.fromRGBO(148, 159, 169, 100),
                    ),
                    const Text(
                      "yoki",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 2,
                      width: 140,
                      color: const Color.fromRGBO(148, 159, 169, 100),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    focusColor: Colors.white,
                    labelText: "Foydalanuvchi nomi",
                    labelStyle: TextStyle(color: Colors.grey.shade400),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Parol",
                    labelStyle: TextStyle(color: Colors.grey.shade400),
                    border: const OutlineInputBorder(),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Parolni unutdingizmi?",
                      style: TextStyle(
                        color: Color.fromRGBO(242, 242, 242, 100),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 90),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(SelectingScreen.routeName),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: const Text(
                      "Kirish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Hisobingiz yo'qmi?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RegisterPage.routeName);
                      },
                      child: const Text(
                        "Ro'yxatdan o'tish.",
                        style: TextStyle(
                          color: Color.fromRGBO(242, 242, 242, 100),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
