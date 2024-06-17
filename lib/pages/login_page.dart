import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttermastery/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          name = value;

                          setState(() {});
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty == true) {
                            return "Username Can't Be Empty";
                          } else if (value.length < 6) {
                            return "Username must be atleast 6 digits Long";
                          }
                          return null;
                        },
                      ),

                      //Password
                      TextFormField(
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty == true) {
                            return "Password Can't Be Empty";
                          } else if (value.length < 8) {
                            return "Password must be atleast 8 digits Long";
                          }

                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: changeButton
                      ? BorderRadius.circular(30)
                      : BorderRadius.circular(8),
                  child: InkWell(
                    borderRadius: changeButton
                        ? BorderRadius.circular(28)
                        : BorderRadius.circular(8),
                    splashColor: Colors.deepPurpleAccent,
                    autofocus: true,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
