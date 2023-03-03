import 'package:flutter/material.dart';
import 'package:flutter_finex_mobileapp/pages/SplashScreen.dart';
import 'package:flutter_finex_mobileapp/data/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finex App',
      theme: ThemeData(
        // colorScheme: ColorScheme(primary: Colors.black12),
        scaffoldBackgroundColor: lSecondaryColorBg,
        fontFamily: 'Muli',
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold  , color: Colors.black),
          headlineMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal  , color: Colors.black),
          headlineSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal  , color: Colors.black),
        ),
      ),
      routes: {"/": (context) => SplashScreen()},
    );
  }
}
