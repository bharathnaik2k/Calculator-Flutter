import 'package:calculator_app_com/screen_widgets/appbutton.dart';
import 'package:calculator_app_com/screen_widgets/homescreen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var input1;
  var input2;
  var input;

  var action;
  var result;

  inputTeak(var value) {
    if (action == null) {
      setState(() {
        input1 += value.toString();
        input += value.toString();
      });
    } else {
      setState(() {
        input2 += value.toString();
        input += value.toString();
      });
    }
  }

  calFunction(var index) {
    setState(() {
      if (index == 0) {
        // result = int.parse(input1) % int.parse(input2);
        setState(() {
          result = "hppp";
        });
      } else if (index == 1) {
        result = int.parse(input1) / int.parse(input2);
      } else if (index == 2) {
        result = int.parse(input1) * int.parse(input2);
      } else if (index == 3) {
        result = int.parse(input1) - int.parse(input2);
      } else if (index == 4) {
        result = int.parse(input1) + int.parse(input2);
      }
    });
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AppButton(
                      input1: input.toString(),
                    ),
                    AppButton(
                      input1: result.toString(),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  setState(() {
                    input1 = "";
                    input2 = "";
                    result = "";
                    input = "";
                    action = null;
                  });
                }, "C", Colors.orange, Colors.black),
                buttonsWidget(() {
                  print(input1.length);
                  print(input2.length);

                  print(action?.length);
                  print(action.toString());
                  print(result.toString());
                }, "⌫", Colors.amberAccent, Colors.black),
                buttonsWidget(() {
                  setState(() {
                    action = "0";
                    input += "%";
                  });
                }, "%", const Color.fromARGB(255, 37, 131, 171)),
                buttonsWidget(() {
                  setState(() {
                    action = "1";
                    input += "÷";
                  });
                }, "÷", const Color.fromARGB(255, 37, 131, 171)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak(7);
                }, "7"),
                buttonsWidget(() {
                  inputTeak(8);
                }, "8"),
                buttonsWidget(() {
                  inputTeak(9);
                }, "9"),
                buttonsWidget(() {
                  setState(() {
                    action = "2";
                    input += "X";
                  });
                }, "X", const Color.fromARGB(255, 37, 131, 171)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonsWidget(() {
                  inputTeak(4);
                }, "4"),
                buttonsWidget(() {
                  inputTeak(5);
                }, "5"),
                buttonsWidget(() {
                  inputTeak(6);
                }, "6"),
                buttonsWidget(() {
                  setState(() {
                    action = "3";
                    input += "-";
                  });
                }, "-", const Color.fromARGB(255, 37, 131, 171)),
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
                buttonsWidget(() {
                  setState(() {
                    action = "4";
                    input += " + ";
                  });
                }, "+", const Color.fromARGB(255, 37, 131, 171)),
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
                buttonsWidget(() {
                  setState(() {
                    calFunction(action);
                  });
                }, "=", Colors.white, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }
}
