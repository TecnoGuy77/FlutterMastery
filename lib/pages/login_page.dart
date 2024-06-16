import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Image.asset(
                height: 225,
                "assets/images/login_image.png",
              ),
            ),
            const SizedBox(
              height: 20,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
            const SizedBox(height: 20),

            //Login Button
            ElevatedButton(
                style: const ButtonStyle(
                    shape: WidgetStatePropertyAll(LinearBorder.none),
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.deepPurpleAccent),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    overlayColor: WidgetStatePropertyAll(Colors.deepPurple)),
                onPressed: () {},
                child: const Text("Login"))
          ],
        ));
  }
}
