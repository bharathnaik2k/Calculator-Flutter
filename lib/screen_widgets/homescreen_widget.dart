import 'package:flutter/material.dart';

TextButton buttonsWidget(
  VoidCallback onPressed,
  String text, [
  Color backgroundColor = Colors.white12,
  Color color = Colors.white,
]) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(backgroundColor),
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      minimumSize: const MaterialStatePropertyAll(Size(70, 70)),
      shape: const MaterialStatePropertyAll(CircleBorder()),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 32, color: color),
    ),
  );
}
