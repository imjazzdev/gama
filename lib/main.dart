import 'package:flutter/material.dart';
import 'package:gama/views/siswa/home.dart';
import 'package:gama/views/splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      // home: BottomNav(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade400,
            ),
          ),
          textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
