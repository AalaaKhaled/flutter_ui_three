import 'package:flutter/material.dart';
import 'package:flutter_ui_three/constants.dart';
import 'package:flutter_ui_three/screens/welcome/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Camp App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
