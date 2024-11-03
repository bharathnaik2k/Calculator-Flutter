import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  _naviScreen(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacementNamed("/HomeScreen");
    });
  }

  remove() {
    //
  }




  // hiujghghjgjhg 
  // asdfghjklrtyui

  @override
  Widget build(BuildContext context) {
    _naviScreen(context);
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.calculate,
          size: 72,
        ),
      ),
    );
  }
}
