import 'package:calculator_app_com/screen_widgets/appbutton.dart';
import 'package:calculator_app_com/screen_widgets/homescreen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? input;
  String? input1;
  String? input2;
  int? action;
  String? result;

  inputTeak(var value) {
    if (action == null) {
      setState(() {
        input1 = (input1 ?? '') + value.toString();
        input = (input ?? '') + value.toString();
      });
    } else {
      setState(() {
        input2 = (input2 ?? '') + value.toString();
        input = (input ?? '') + value.toString();
      });
    }
  }

  calFunction(var index) {
    setState(() {
      if (result == null) {
        if (index == 0) {
          result = (double.parse(input1!) % double.parse(input2!)).toString();
        } else if (index == 1) {
          result = (double.parse(input1!) / double.parse(input2!)).toString();
        } else if (index == 2) {
          result = (double.parse(input1!) * double.parse(input2!)).toString();
        } else if (index == 3) {
          result = (double.parse(input1!) - double.parse(input2!)).toString();
        } else if (index == 4) {
          result = (double.parse(input1!) + double.parse(input2!)).toString();
        }
      } else {
        if (index == 0) {
          result = (double.parse(result!) % double.parse(input2!)).toString();
        } else if (index == 1) {
          result = (double.parse(result!) / double.parse(input2!)).toString();
        } else if (index == 2) {
          result = (double.parse(result!) * double.parse(input2!)).toString();
        } else if (index == 3) {
          result = (double.parse(result!) - double.parse(input2!)).toString();
        } else if (index == 4) {
          result = (double.parse(result!) + double.parse(input2!)).toString();
        }
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppButton(
                      input1: input == null ? "" : input.toString(),
                      color: Colors.white,
                    ),
                    Visibility(
                      visible: result == null ? false : true,
                      child: AppButton(
                        input1: result.toString(),
                        color: Colors.amber,
                      ),
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
                    input1 = null;
                    input2 = null;
                    result = null;
                    input = null;
                    action = null;
                  });
                }, "C", Colors.orange, Colors.black),
                buttonsWidget(() {}, "⌫", Colors.amberAccent, Colors.black),
                buttonsWidget(() {
                  setState(() {
                    action = 0;
                    input = ("$input%");
                  });
                }, "%", const Color.fromARGB(255, 37, 131, 171)),
                buttonsWidget(() {
                  setState(() {
                    action = 1;
                    input = ("$input÷");
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
                    action = 2;
                    input = ("${input}X");
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
                    action = 3;

                    input = ("$input-");
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
                    action = 4;
                    input = ("$input+");
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
                    action = null;
                    input2 = null;
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
