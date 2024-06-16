import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttermastery/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String name = "";
bool changeButton = false;

class _LoginPageState extends State<LoginPage> {
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
              Text(
                "Welcome $name",
                style: const TextStyle(
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
                      onChanged: (value) {
                        name = value;

                        setState(() {});
                      },
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

              InkWell(
                focusColor: Colors.white,
                splashColor: Colors.white,
                autofocus: true,
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: changeButton
                        ? BorderRadius.circular(30)
                        : BorderRadius.circular(8),
                  ),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                ),
              ),
              //Login Button

              // ElevatedButton(
              //   style: TextButton.styleFrom(
              //     shape: const RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(2.5))),
              //     foregroundColor: Colors.white,
              //     backgroundColor: Colors.deepPurpleAccent,
              //     minimumSize: const Size(150, 40),
              //   ),
              //   onPressed: () {
              //     Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: const Text("Login"),
              // ),
            ],
          ),
        ));
  }
}
