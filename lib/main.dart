import 'package:flutter/material.dart';
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
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
