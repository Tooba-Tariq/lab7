import 'package:flutter/material.dart';

class ChildW extends StatelessWidget {
  dynamic? ntext;
  dynamic? nicon;
  ChildW({required this.ntext, required this.nicon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ntext,
        nicon,
      ],
    );
  }
}
