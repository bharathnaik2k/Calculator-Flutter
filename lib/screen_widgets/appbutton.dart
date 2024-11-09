import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? input1;
  const AppButton({super.key, required this.input1});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        // maxLines: 1,
        // textAlign: TextAlign.justify,
        input1.toString(),
        style: const TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
