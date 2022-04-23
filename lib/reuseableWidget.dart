import 'package:flutter/material.dart';
import 'Keyword.dart';

class reuseableWidget extends StatelessWidget {
  dynamic? nwidth;
  dynamic? newchild;
  dynamic? color;
  reuseableWidget({
    required this.nwidth,
    this.newchild,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 200,
      width: nwidth,
      child: newchild,
    );
  }
}
