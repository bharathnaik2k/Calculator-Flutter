import 'package:calculator_app_com/screen_widgets/homescreen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List? input;
  var output;

  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();

  inputTeak(var value) {
    setState(() {
      output = value;
    });
    // if (input!.isEmpty) {

    // } else {}
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
                height: 200,
                decoration: const BoxDecoration(),
                child: AppButton(input1: input.toString())),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  setState(() {});
                }, "C", Colors.amber, Colors.black),
                buttonsWidget(() {}, "⌫", Colors.white54, Colors.black),
                buttonsWidget(() {}, "%"),
                buttonsWidget(() {}, "÷"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak(9);
                }, "7"),
                buttonsWidget(() {
                  inputTeak(9);
                }, "8"),
                buttonsWidget(() {
                  TextField(

                    controller: input1,
                  );
                  inputTeak(9);
                }, "9"),
                buttonsWidget(() {}, "X"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak("4");
                }, "4"),
                buttonsWidget(() {
                  inputTeak(5);
                }, "5"),
                buttonsWidget(() {
                  inputTeak(6);
                }, "6"),
                buttonsWidget(() {}, "-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak(3);
                }, "3"),
                buttonsWidget(() {
                  inputTeak(2);
                }, "2"),
                buttonsWidget(() {
                  inputTeak(1);
                }, "1"),
                buttonsWidget(() {}, "+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak("00");
                }, "00"),
                buttonsWidget(() {
                  inputTeak(0);
                }, "0"),
                buttonsWidget(() {
                  inputTeak(".");
                }, "."),
                buttonsWidget(() {}, "=", Colors.white54, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  String? input1;
  AppButton({super.key, required this.input1});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child:
          // input == null
          //     ? const SizedBox()
          //     :
          Text(
        input1.toString(),
        style: const TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
