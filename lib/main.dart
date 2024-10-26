import 'package:calculator_app_com/screen_widgets/homescreen.dart';
import 'package:calculator_app_com/screen_widgets/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      initialRoute: "/SplashScreen",
      routes: {
        "/SplashScreen": (context) => const SplashScreen(),
        "/HomeScreen": (context) => const HomeScreen(),
      },
    );
  }
}
