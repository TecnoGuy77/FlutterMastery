import 'package:flutter/material.dart';
import 'package:fluttermastery/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, MyRoutes.loginRoute);
                  },
                  icon: const Icon(Icons.home)),
            )
          ],
          foregroundColor: Colors.white,
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 25),
              child: Text(
                "Home",
              ),
            ),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        drawer: const Drawer(),
        body: const Center(
          child: Text(
            "Welcome To Home",
            style: TextStyle(
              fontSize: 25,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
