import 'package:calculator_app_com/screen_widgets/homescreen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var input;
  var output;
  setstate() {
    output = input;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "ubuntu",
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: 230,
              // color: Colors.white,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: Alignment.bottomRight,
                child: output == null
                    ? const SizedBox()
                    : Text(
                        output.toString(),
                        style: const TextStyle(fontSize: 60),
                      ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  
                }, "C", Colors.amber, Colors.black),
                buttonsWidget(() {}, "⌫", Colors.white54, Colors.black),
                buttonsWidget(() {}, "%"),
                buttonsWidget(() {}, "÷"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {}, "7"),
                buttonsWidget(() {}, "8"),
                buttonsWidget(() {}, "9"),
                buttonsWidget(() {}, "X"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {}, "4"),
                buttonsWidget(() {}, "5"),
                buttonsWidget(() {}, "6"),
                buttonsWidget(() {}, "-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {}, "3"),
                buttonsWidget(() {}, "2"),
                buttonsWidget(() {
                  input = 1;
                  setstate();
                }, "1"),
                buttonsWidget(() {}, "+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {}, "00"),
                buttonsWidget(() {}, "0"),
                buttonsWidget(() {}, "."),
                buttonsWidget(() {}, "=", Colors.white54, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }
}
