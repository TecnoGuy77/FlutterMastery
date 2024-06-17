import 'package:flutter/material.dart';
import 'package:fluttermastery/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttermastery/pages/home_page.dart';
import 'package:fluttermastery/pages/login_page.dart';

void main() {
  runApp(const FlutterMastery());
}

class FlutterMastery extends StatelessWidget {
  const FlutterMastery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
