import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? input1;
  final Color? color;
  const AppButton({
    super.key,
    required this.input1,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        input1.toString(),
        style: TextStyle(
          fontSize: 40,
          color: color,
        ),
      ),
    );
  }
}
