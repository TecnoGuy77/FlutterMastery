import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttermastery/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                height: 250,
                "assets/images/login_image.png",
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    //Username
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),

                    //Password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //Login Button
              ElevatedButton(
                style: TextButton.styleFrom(
                  shape: LinearBorder.none,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                  minimumSize: const Size(150, 40),
                ),
                onPressed: () {
                  if (kDebugMode) {
                    Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
                  }
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ));
  }
}
