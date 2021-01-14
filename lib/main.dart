import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytraing_app/screens/trainingpage/home_page.dart';
import 'package:mytraing_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training App',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.sansitaTextTheme(Theme.of(context).textTheme),
        primaryColor: primary,
        accentColor: primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
